import math
import os
from random import randint

import matplotlib.colors

import cv2
import matplotlib.pyplot as plt
import networkx as nx
import skan
import numpy as np
from PIL import Image, ImageDraw
from skan import skeleton_to_csgraph
from skimage import io, img_as_bool, img_as_uint, segmentation, img_as_ubyte
from skimage.morphology import skeletonize
from skimage.util import invert

from parameters import ParameterObj
from util.disegna import setup_plot


def remove_2_neighbors(graph):
    old_edges = 0
    new_edges = len(graph.edges)
    precision = old_edges - new_edges
    while precision != 0:
        for node in graph.nodes:
            tmp = list(graph.neighbors(node))
            if len(tmp) == 2:
                # new_graph = nx.contracted_nodes(new_graph, tmp[0], node, self_loops=False)
                graph.remove_edge(node, tmp[0])
                graph.remove_edge(node, tmp[1])
                graph.add_edge(tmp[0], tmp[1])
        old_edges = new_edges
        new_edges = len(graph.edges)
        precision = old_edges - new_edges
    # print('edge after remove 2 neighbors:', len(graph.edges))
    graph.remove_nodes_from(list(nx.isolates(graph)))


# print('nodes after removed 2 neighbors:', len(graph.nodes))


def remove_1_neighbors(graph):
    old_edges = 0
    new_edges = len(graph.edges)
    precision = old_edges - new_edges
    while precision != 0:
        for node in graph.nodes:
            tmp = list(graph.neighbors(node))
            if len(tmp) == 1:
                graph.remove_edge(node, tmp[0])
        old_edges = new_edges
        new_edges = len(graph.edges)
        precision = old_edges - new_edges
    # print('edge after remove 2 neighbors:', len(graph.edges))
    graph.remove_nodes_from(list(nx.isolates(graph)))


def remove_2_neighbors_one_cycle(graph):
    li = []
    for node in graph.nodes:
        tmp = list(graph.neighbors(node))
        if len(tmp) == 2:
            li.append(node)
    for n in li:
        tmp = list(graph.neighbors(n))
        if len(tmp) == 2:
            li.append(n)
            graph.remove_edge(n, tmp[0])
            graph.remove_edge(n, tmp[1])
            graph.add_edge(tmp[0], tmp[1])
    graph.remove_nodes_from(list(nx.isolates(graph)))


def remove_1_neighbors_one_cycle(graph):
    li = []
    for node in graph.nodes:
        tmp = list(graph.neighbors(node))
        if len(tmp) == 1:
            li.append(node)
    for el in li:
        n = list(graph.neighbors(el))
        graph.remove_edge(el, n[0])
    graph.remove_nodes_from(list(nx.isolates(graph)))


def remove_1_and_2_neighbors(graph):
    tb = 0
    tc = 0
    for node in graph.nodes:
        tmp = list(graph.neighbors(node))
        if len(tmp) == 2:
            tb += 1
            # new_graph = nx.contracted_nodes(new_graph, tmp[0], node, self_loops=False)
            graph.remove_edge(node, tmp[0])
            graph.remove_edge(node, tmp[1])
            graph.add_edge(tmp[0], tmp[1])
        elif len(tmp) == 1:
            tc += 1
            # new_graph = nx.contracted_edge(new_graph, (tmp[0], node), self_loops=False)
            graph.remove_edge(node, tmp[0])
    # print('case 2:', tb)
    # print('case 1:', tc)
    # 	print('edge after remove 1 and 2 neighbors:', len(graph.edges))
    graph.remove_nodes_from(list(nx.isolates(graph)))


def plot_line(node_i, node_j, ax):
    x_coordinates = []
    y_coordinates = []
    x1 = int(node_i[1])
    x2 = int(node_j[1])
    y1 = int(node_i[0])
    y2 = int(node_j[0])
    x_coordinates.extend((x1, x2))
    y_coordinates.extend((y1, y2))
    ax.plot(x_coordinates, y_coordinates, color='k', linewidth=1)
    del x_coordinates[:]
    del y_coordinates[:]


def removed_isolated_cycles(graph):
    li = sorted(nx.connected_components(graph), key=len, reverse=True)
    largest_cc = li[0]
    voronoi_graph = graph.subgraph(largest_cc).copy()
    # print('edge after subgraph:', len(voronoi_graph.edges))
    # print('nodes after subgraph:', len(voronoi_graph.nodes))
    voronoi_graph.remove_nodes_from(list(nx.isolates(voronoi_graph)))
    # print('nodes after removed isolated:', len(voronoi_graph.nodes))
    return voronoi_graph


def plot_voronoi(coordinates, voronoi_graph, ax, label, is_labelled, name, filepath):
    for edge in voronoi_graph.edges:
        plot_line(coordinates[edge[0]], coordinates[edge[1]], ax)
    for node in voronoi_graph.nodes:
        if is_labelled:
            col = (label[node][0] / 255, label[node][1] / 255, label[node][2] / 255)
            ax.scatter(coordinates[node][1], coordinates[node][0], c=matplotlib.colors.rgb2hex(col))
        else:
            ax.scatter(coordinates[node][1], coordinates[node][0])
    plt.savefig(filepath + name + '.png')


def evaluate_distance(node1, node2):
    distance = math.sqrt((node1[0] - node2[0]) ** 2 + (node1[1] - node2[1]) ** 2)
    return distance


def remove_close_nodes(graph, coordinates, th):
    for node in graph.nodes:
        for n in graph.nodes:
            if n != node and evaluate_distance(coordinates[node], coordinates[n]) < th:
                graph = nx.contracted_nodes(graph, node, n, self_loops=False)
    # print('nodes after removed closed:', len(graph.nodes))
    return graph


def exist_path(color, paths, label):
    same_color = False
    for path in paths:
        for point in path:
            if label[point] == color:
                same_color = True
            else:
                same_color = False
                break
        if same_color is True:
            break
    return same_color


def compute_lines_direction(centers, v, u, n1, n2, directions):
    point1 = centers[v]
    point2 = centers[u]
    pt = [(point1[0] + point2[0]) / 2, (point1[1] + point2[1]) / 2]
    pt_n = [(n1[0] + n2[0]) / 2, (n1[1] + n2[1]) / 2]
    lines1 = []
    lines2 = []
    for direction in directions:
        m = math.tan(direction)
        c1 = point1[1] - m * point1[0]
        c2 = point2[1] - m * point2[0]
        lines1.append(c1)
        lines2.append(c2)
    max_distance = None
    direction = 0
    m_pt = None
    c_pt = None
    for i, line in enumerate(lines1):
        par_line = lines2[i]
        dist = abs(line - par_line) / math.sqrt(1 + math.tan(directions[i]) * math.tan(directions[i]))
        if max_distance is None or dist > max_distance:
            max_distance = dist
            direction = directions[i]
            m_pt = math.tan(directions[i])
            c_pt = pt_n[1] - m_pt * pt_n[0]
    return direction, m_pt, c_pt


def compute_intersections(x_min, x_max, y_min, y_max, m, c):
    points = []
    x1 = x_min
    y1 = m * x1 + c
    point1 = (int(x1), int(y1))
    # print('point1', point1)
    if y_min <= point1[1] <= y_max:
        points.append(point1)
    x2 = x_max
    y2 = m * x2 + c
    point2 = (int(x2), int(y2))
    # print('point2', point2)
    if y_min <= point2[1] <= y_max:
        points.append(point2)
    y3 = y_min
    x3 = (y3 - c) / m
    point3 = (int(x3), int(y3))
    # print('point3', point3)
    if x_min <= point3[0] <= x_max:
        points.append(point3)
    y4 = y_max
    x4 = (y4 - c) / m
    point4 = (int(x4), int(y4))
    # print('point4', point4)
    if x_min <= point4[0] <= x_max:
        points.append(point4)
    return points


def compute_most_distant(list_point, center, coordinates, pix_data, color):
    distance = 0
    point = None
    for p in list_point:
        pt = [int(coordinates[p][1]), int(coordinates[p][0])]
        dist = evaluate_distance(pt, center)
        if dist > distance and pix_data[pt[0], pt[1]] == color:
            point = (int(coordinates[p][1]), int(coordinates[p][0]))
    return point


def remove_close_nodes_1_neighbors(graph, coordinates, th):
    old_edges = 0
    new_edges = len(graph.edges)
    precision = old_edges - new_edges
    while precision != 0:
        for node in graph.nodes:
            tmp = list(graph.neighbors(node))
            if len(tmp) == 1 and evaluate_distance(coordinates[node], coordinates[tmp[0]]) < th:
                graph.remove_edge(node, tmp[0])
        old_edges = new_edges
        new_edges = len(graph.edges)
        precision = old_edges - new_edges
    graph.remove_nodes_from(list(nx.isolates(graph)))


def remove_close_node_2_neighbors(graph, coordinates, th):
    old_edges = 0
    new_edges = len(graph.edges)
    precision = old_edges - new_edges
    while precision != 0:
        for node in graph.nodes:
            tmp = list(graph.neighbors(node))
            if len(tmp) == 2 and evaluate_distance(coordinates[node], coordinates[tmp[0]]) < th and evaluate_distance(coordinates[node], coordinates[tmp[1]]) < th:
                graph.remove_edge(node, tmp[0])
                graph.remove_edge(node, tmp[1])
                graph.add_edge(tmp[0], tmp[1])
        old_edges = new_edges
        new_edges = len(graph.edges)
        precision = old_edges - new_edges
    graph.remove_nodes_from(list(nx.isolates(graph)))


def remove_close_nodes_1_neighbors_one_cycle(graph, coordinates, th):
    li = []
    for node in graph.nodes:
        tmp = list(graph.neighbors(node))
        if len(tmp) == 1 and evaluate_distance(coordinates[node], coordinates[tmp[0]]) < th:
            li.append(node)
    for el in li:
        n = list(graph.neighbors(el))
        if len(n) == 1:
            graph.remove_edge(el, n[0])
    graph.remove_nodes_from(list(nx.isolates(graph)))


def compute_voronoi_graph(origin, param_obj, only_graph, name, bormann, filepath=''):
    # --------------------------INITIALIZATION----------------------------------

    # load map
    copy = cv2.imread(origin)
    im = copy.copy()

    # setup plot
    fig, ax = setup_plot([im.shape[1], im.shape[0]])
    ax.imshow(im)

    im = cv2.blur(im, (param_obj.blur, param_obj.blur))
    im = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)
    im = cv2.threshold(im, 230, 255, cv2.THRESH_BINARY)[1]
    im = cv2.bitwise_not(im)
    cv2.imwrite('tmp.png', im, [cv2.IMWRITE_PNG_COMPRESSION])
    initial_map = img_as_bool(io.imread('tmp.png'))
    os.remove('tmp.png')

    # Invert image
    input_skeleton = invert(initial_map)

    # ------------------------------SKELETON-----------------------------------

    skeleton = skeletonize(input_skeleton)
    skeleton_object = skan.csr.Skeleton(skeleton)
    pixel_graph, coordinates, degrees = skeleton_to_csgraph(skeleton)
    io.imsave(filepath + 'degrees.png', skeleton_object.degrees_image)

    # -------------------------------GRAPH-------------------------------------

    graph = nx.from_scipy_sparse_matrix(pixel_graph, edge_attribute='weight')

    print('edges initial:', len(graph.edges))
    print('nodes initial:', len(graph.nodes))

    # ---------------------------PRUNING NODES----------------------------------

    # remove isolated part of graph
    voronoi_graph = removed_isolated_cycles(graph)

    # remove_by_weight(voronoi_graph)

    if bormann:
        remove_close_nodes_1_neighbors_one_cycle(voronoi_graph, coordinates, 40)
        remove_close_node_2_neighbors(voronoi_graph, coordinates, 40)
        remove_close_nodes_1_neighbors_one_cycle(voronoi_graph, coordinates, 40)
    else:
        remove_close_nodes_1_neighbors_one_cycle(voronoi_graph, coordinates, 40)
        # remove_2_neighbors_one_cycle(voronoi_graph)
        remove_close_node_2_neighbors(voronoi_graph, coordinates, 60)
        # remove_close_nodes_1_neighbors_one_cycle(voronoi_graph, coordinates, 50)
        remove_close_nodes_1_neighbors(voronoi_graph, coordinates, 30)
        # remove_2_neighbors_one_cycle(voronoi_graph)

    # remove_2_neighbors(voronoi_graph)

    # remove_2_neighbors_one_cycle(voronoi_graph)

    # if len(voronoi_graph.nodes) > 500:
    # remove_1_and_2_neighbors(voronoi_graph)

    if len(voronoi_graph.nodes) > 2:
        voronoi_graph = remove_close_nodes(voronoi_graph, coordinates, param_obj.voronoi_closeness)

    # remove_1_neighbors(voronoi_graph)

    graph.remove_nodes_from(list(nx.isolates(graph)))

    print('edges final:', len(voronoi_graph.edges))
    print('nodes final:', len(voronoi_graph.nodes))

    # -------------------------------PLOT-------------------------------------

    if only_graph:
        plot_voronoi(coordinates, voronoi_graph, ax, 0, False, 'voronoi_graph_' + name, filepath=filepath)

    return voronoi_graph, coordinates


def labelling(voronoi_graph, coordinates, filepath='.'):
    # --------------------------INITIALIZATION--------------------------------

    true_rooms = Image.open(filepath + '8b_rooms_th1.png')
    room = Image.open(filepath + '8b_rooms_th1_on_map_post.png')
    room_to_divide = room.copy()

    pix_data_room_divide = room_to_divide.load()
    pix_data_room = room.load()
    pix_data_true_room = true_rooms.load()

    label = [(0, 0, 0, 255)] * len(coordinates)
    colors = []
    colors_to_divide = []
    node_to_remove = []

    # --------------------------LABELLING NODES--------------------------------

    # compute label colors and check node to remove.
    for node in voronoi_graph.nodes:
        coor = (int(coordinates[node][1]), int(coordinates[node][0]))
        color = pix_data_room[coor]
        color_room = pix_data_true_room[coor]
        if color == (0, 0, 0, 255):
            if color_room != (255, 255, 255, 255):
                label[node] = color_room
                if color not in colors and color != (0, 0, 0, 255):
                    colors.append(color)
            else:
                node_to_remove.append(node)
            # print('voronoi node outside rooms 1')
        elif color == (255, 255, 255, 255):
            # print('voronoi node outside rooms 2')
            node_to_remove.append(node)
        else:
            label[node] = color
            if color not in colors and color != (0, 0, 0, 255):
                colors.append(color)

    # remove nodes outside room segmentation
    for i, node in enumerate(node_to_remove):
        li = list(voronoi_graph.neighbors(node))
        ne = li[0]
        for n in li:
            if label[n] != (0, 0, 0, 255):
                ne = n
                break
        voronoi_graph = nx.contracted_nodes(voronoi_graph, ne, node, self_loops=False)

    # --------------------------ROOMS TO BE DIVIDED--------------------------------

    # TODO compute subgraph instead of checking each node
    # compute rooms to be divided based on connectivity
    for color in colors:
        list_node = []
        for i, c in enumerate(label):
            if c == color and c != (0, 0, 0, 255):
                list_node.append(i)
        # for node in list_node:
        # 	for edge in voronoi_graph.edges(node):
        # 		if edge[1] in list_node:
        # 			g.add_edge(node, edge[1])
        subg = voronoi_graph.subgraph(list_node)
        if not nx.is_connected(subg):
            colors_to_divide.append(color)
    # ok = True
    # for i, node in enumerate(list_node):
    # 	for j in range(i + 1, len(list_node)):
    # 		n = list_node[j]
    # 		paths = []
    # 		i = 0
    # 		for path in nx.shortest_simple_paths(voronoi_graph, node, n):
    # 			i += 1
    # 			paths.append(path)
    # 			if i == 10:
    # 				break
    # 		if not exist_path(color, paths, label):
    # 			ok = False
    # 			colors_to_divide.append(color)
    # 			break
    # 	if ok is False:
    # 		break

    # -----------------------------PLOT-----------------------------------

    for y in range(room_to_divide.size[1]):
        for x in range(room_to_divide.size[0]):
            if pix_data_room_divide[x, y] not in colors_to_divide:
                pix_data_room_divide[x, y] = (0, 0, 0, 255)
    room_to_divide.save(filepath + 'rooms_to_divide.png')

    return colors_to_divide, label, voronoi_graph


def compute_centers(size0, size1, coordinates, subgraphs):
    centers = []
    centers_node = []
    for subgraph in subgraphs:
        x_min, x_max, y_min, y_max = size0, 0, size1, 0
        for n in subgraph:
            x = int(coordinates[n][1])
            y = int(coordinates[n][0])
            if x <= x_min:
                x_min = x
            if x >= x_max:
                x_max = x
            if y <= y_min:
                y_min = y
            if y >= y_max:
                y_max = y
        middle_point = [int((x_max + x_min) / 2), int((y_max + y_min) / 2)]
        centers.append(middle_point)
        distance = 100000
        nd = None
        for i in list(subgraph):
            di = evaluate_distance(middle_point, (coordinates[i][1], coordinates[i][0]))
            if di < distance:
                distance = di
                nd = [int(coordinates[i][1]), int(coordinates[i][0])]
        centers_node.append(nd)

    return centers, centers_node


def compute_closer_subgraphs(subgraphs, centers):
    list_closer = []
    for v, subgraph in enumerate(subgraphs):
        distance = 10000
        index = v
        for u, g in enumerate(subgraphs):
            dist = evaluate_distance(centers[v], centers[u])
            if dist < distance and u != v:
                index = u
                distance = dist
        list_closer.append(index)
    return list_closer


def compute_room_range(tmp_room, pix_data_tmp, new_col, closer):
    x_min, x_max, y_min, y_max = tmp_room.size[0], 0, tmp_room.size[1], 0
    for y in range(tmp_room.size[1]):
        for x in range(tmp_room.size[0]):
            if pix_data_tmp[x, y] == new_col[closer] or pix_data_tmp[x, y] == (0, 0, 0, 255):
                if x <= x_min:
                    x_min = x
                if x >= x_max:
                    x_max = x
                if y <= y_min:
                    y_min = y
                if y >= y_max:
                    y_max = y
            else:
                pix_data_tmp[x, y] = (255, 255, 255, 255)
    return x_min, x_max, y_min, y_max


def closer_nodes(subgraph1, subgraph2, coordinates):
    distance = 100000
    n1 = None
    n2 = None
    for node in subgraph1:
        node1 = [coordinates[node][1], coordinates[node][0]]
        for n in subgraph2:
            node2 = [coordinates[n][1], coordinates[n][0]]
            dist = evaluate_distance(node1, node2)
            if dist < distance:
                distance = dist
                n1 = node1
                n2 = node2
    return n1, n2


def compute_side(a, b, point):
    side = (point[0] - a[0]) * (b[1] - a[1]) - (point[1] - a[1]) * (b[0] - a[0])
    if side > 0:
        return 1
    elif side < 0:
        return -1
    else:
        return 0


def voronoi_segmentation(voronoi_graph, coordinates, directions_orebro, im, ind, filepath='.'):
    # --------------------------INITIALIZATION--------------------------------

    true_rooms = Image.open(filepath + '8b_rooms_th1.png')

    colors_to_divide, label, voronoi_graph = labelling(voronoi_graph, coordinates, filepath=filepath)

    voronoi_graph = voronoi_graph.copy()
    copy = cv2.imread(im)
    im = copy.copy()
    fig, ax = setup_plot([im.shape[1], im.shape[0]])
    ax.imshow(im)
    plot_voronoi(coordinates, voronoi_graph, ax, label, True, 'voronoi_graph' + str(ind), filepath=filepath)

    # -----------------------------SEGMENTATION------------------------------------

    for color in colors_to_divide:
        # compute new subgraph based on color of labelling
        new_nodes = []
        for i, label_color in enumerate(label):
            if label_color == color:
                new_nodes.append(i)
        g = nx.Graph()
        for node in new_nodes:
            for edge in voronoi_graph.edges(node):
                if edge[1] in new_nodes:
                    g.add_edge(node, edge[1])
        subgraphs = list(sorted(nx.connected_components(g), key=len, reverse=True))
        tot = 0
        already_present = []

        # exception for subgraph of one single node
        for li_comp in subgraphs:
            tot += len(li_comp)
            for ap in li_comp:
                already_present.append(ap)
        if tot != len(new_nodes):
            for nod in new_nodes:
                if nod not in already_present:
                    subgraphs.append([nod])

        new_col = [color] * len(subgraphs)
        analyzed = []

        # compute center points of subgraphs and closer node to center
        centers, centers_node = compute_centers(true_rooms.size[0], true_rooms.size[1], coordinates, subgraphs)

        # compute closer subgraphs list
        list_closer = compute_closer_subgraphs(subgraphs, centers)

        ind = 0
        for v, subgraph in enumerate(subgraphs):
            ind += 1
            tmp_room = Image.open(filepath + '8b_rooms_th1.png')
            pix_data_tmp = tmp_room.load()
            closer = list_closer[v]
            if not (v in analyzed and closer in analyzed):

                # add these 2 subgraphs in analyzed
                analyzed.append(closer)
                analyzed.append(v)

                # compute seeds, used in flood filling
                seed1 = compute_most_distant(list(subgraph), centers[closer], coordinates, pix_data_tmp, new_col[v])
                # print('seed1:', seed1)
                seed2 = compute_most_distant(list(subgraphs[closer]), centers[v], coordinates, pix_data_tmp, new_col[v])
                # print('seed2:', seed2)

                if not (seed1 is None or seed2 is None):

                    # compute room color range
                    x_min, x_max, y_min, y_max = compute_room_range(tmp_room, pix_data_tmp, new_col, closer)

                    err = True
                    points = []
                    while err:
                        err = False

                        n1, n2 = closer_nodes(subgraph, subgraphs[closer], coordinates)

                        # compute direction where to cut the area based on orebro's directions
                        direction, m, c = compute_lines_direction(centers, v, closer, n1, n2, directions_orebro)

                        # compute maximum intersection between range of room and line
                        points = compute_intersections(x_min, x_max, y_min, y_max, m, c)

                        if len(points) == 0:
                            break

                        node_err_1 = []
                        node_err_2 = []
                        node_err_1_closer = []
                        node_err_2_closer = []
                        for node in subgraph:
                            side = compute_side(points[0], points[1], [coordinates[node][1], coordinates[node][0]])
                            if side == 1:
                                node_err_1.append(node)
                            else:
                                node_err_2.append(node)
                        if len(node_err_1) != 0 and len(node_err_2) != 0:
                            err = True

                        if not err:
                            if len(node_err_1) != 0:
                                side_v = 1
                            else:
                                side_v = -1
                            for node in subgraphs[closer]:
                                side = compute_side(points[0], points[1], [coordinates[node][1], coordinates[node][0]])
                                if side == 1:
                                    node_err_1_closer.append(node)
                                else:
                                    node_err_2_closer.append(node)
                            if len(node_err_1_closer) != 0 and len(node_err_2_closer) != 0:
                                err = True
                            if len(node_err_2_closer) > len(node_err_1_closer) and side_v != -1:
                                subgraphs[closer] = node_err_2_closer
                            else:
                                subgraphs[closer] = node_err_1_closer
                        if err:
                            if len(node_err_2) > len(node_err_1):
                                subgraph = node_err_2
                            else:
                                subgraph = node_err_1

                    if len(points) == 0:
                        break

                    # draw room before cut it
                    tmp_room.save(filepath + 't_room_pre_' + str(ind) + '.png')

                    # draw line to separate the room
                    draw = ImageDraw.Draw(tmp_room)
                    draw.line((points[0], points[1]), fill=(0, 0, 0, 255), width=1)
                    tmp_room.save(filepath + 't_room.png')

                    # get old color in grayscale for exception
                    # tmp_room_gray_tmp = Image.open(filepath + 't_room.png').convert('L')
                    # pix_data_tmp_gray_tmp = tmp_room_gray_tmp.load()
                    # old_color = pix_data_tmp_gray_tmp[centers_node[v][0], centers_node[v][1]]

                    # flood fill the 2 part of the room with 2 different color
                    # tmp_room_gray = Image.open(filepath + 't_room.png')
                    # data = segmentation.flood_fill(np.asarray(tmp_room_gray), (seed1[1], seed1[0]), 100, connectivity=1)
                    # tmp_room_gray = Image.fromarray(data)
                    # tmp_room_gray.save(filepath + 'tmp_room_gray1_' + str(ind) + '.png')
                    # data = segmentation.flood_fill(np.asarray(tmp_room_gray), (seed2[1], seed2[0]), 200, connectivity=1)
                    # tmp_room_gray = Image.fromarray(data)
                    # tmp_room_gray.save(filepath + 'tmp_room_gray2_' + str(ind) + '.png')

                    # load image
                    original_room_image = Image.open(filepath + '8b_rooms_th1.png')

                    # setup 2 new color
                    color1 = (randint(0, 255), randint(0, 255), randint(0, 255), 255)
                    color2 = (randint(0, 255), randint(0, 255), randint(0, 255), 255)

                    # node_exception = None
                    # color_exception = None

                    # check for exception in the image
                    # for y in range(tmp_room.size[1]):
                    # 	for x in range(tmp_room.size[0]):
                    # 		pixel = tmp_room_gray.getpixel((x, y))
                    # 		if pixel == 0:
                    # 			if 1 < x < tmp_room.size[0] - 1 and 1 < y < tmp_room.size[1] - 1:
                    # 				pixel1 = tmp_room_gray.getpixel((x + 1, y))
                    # 				pixel2 = tmp_room_gray.getpixel((x - 1, y))
                    # 				pixel3 = tmp_room_gray.getpixel((x, y + 1))
                    # 				pixel4 = tmp_room_gray.getpixel((x, y - 1))
                    # 				if pixel1 == old_color and (pixel2 == 100 or pixel2 == 200):
                    # 					node_exception = (x + 1, y)
                    # 					color_exception = pixel2
                    # 				elif (pixel1 == 100 or pixel1 == 200) and pixel2 == old_color:
                    # 					node_exception = (x - 1, y)
                    # 					color_exception = pixel1
                    # 				elif pixel3 == old_color and (pixel4 == 100 or pixel4 == 200):
                    # 					node_exception = (x, y + 1)
                    # 					color_exception = pixel4
                    # 				elif (pixel3 == 100 or pixel3 == 200) and pixel4 == old_color:
                    # 					node_exception = (x, y - 1)
                    # 					color_exception = pixel3
                    # 				else:
                    # 					tmp_room_gray.putpixel((x, y), 255)

                    # color image in the case of exception
                    # if node_exception is not None:
                    # 	data = segmentation.flood_fill(np.asarray(tmp_room_gray), (node_exception[1], node_exception[0]), color_exception, connectivity=1)
                    # 	tmp_room_gray = Image.fromarray(data)
                    # 	tmp_room_gray.save(filepath + 'tmp_room_gray_exception_' + str(ind) + '.png')
                    # 	for y in range(tmp_room.size[1]):
                    # 		for x in range(tmp_room.size[0]):
                    # 			pixel = tmp_room_gray.getpixel((x, y))
                    # 			if pixel == 100:
                    # 				original_room_image.putpixel((x, y), color1)
                    # 				if [x, y] in centers_node:
                    # 					index = centers_node.index([x, y])
                    # 					new_col[index] = color1
                    # 			if pixel == 200:
                    # 				original_room_image.putpixel((x, y), color2)
                    # 				if [x, y] in centers_node:
                    # 					index = centers_node.index([x, y])
                    # 					new_col[index] = color2
                    # 			if pixel == 0:
                    # 				if color_exception == 100:
                    # 					original_room_image.putpixel((x, y), color1)
                    # 				if color_exception == 200:
                    # 					original_room_image.putpixel((x, y), color2)

                    # color the image in normal case
                    for y in range(tmp_room.size[1]):
                        for x in range(tmp_room.size[0]):
                            pixel = original_room_image.getpixel((x, y))
                            side = compute_side(points[0], points[1], (x, y))
                            if pixel == color:
                                if side == 1 or side == 0:
                                    original_room_image.putpixel((x, y), color1)
                                    if [x, y] in centers_node:
                                        index = centers_node.index([x, y])
                                        new_col[index] = color1
                                if side == -1:
                                    original_room_image.putpixel((x, y), color2)
                                    if [x, y] in centers_node:
                                        index = centers_node.index([x, y])
                                        new_col[index] = color2

                    for i, c in enumerate(new_col):
                        if c == color:
                            for node in subgraphs[i]:
                                pixel = original_room_image.getpixel((coordinates[node][1], coordinates[node][0]))
                                if pixel == color1:
                                    new_col[i] = color1
                                    break
                                if pixel == color2:
                                    new_col[i] = color2
                                    break

                    # save final maps
                    original_room_image.save(filepath + '8b_rooms_th1.png')
                    original_room_image.save(filepath + '8b_rooms_th1' + str(ind) + '.png')


if __name__ == '__main__':
    input_path = './../data/INPUT/IMGs/'
    output_path = './../data/OUTPUT/voronoi_graph/'
    if not os.path.exists(output_path):
        os.mkdir(output_path)
    for folder in os.listdir(input_path):
        if folder == 'bormann no gt':
            pass
        else:
            output = os.path.join(output_path, folder) + '/'
            input = os.path.join(input_path, folder)
            if not os.path.exists(output):
                os.mkdir(output)
            if folder == 'Bormann' or folder == 'Bormann_furnitures':
                bormann = True
            else:
                bormann = False
            for map in os.listdir(input):
                if map != 'percentage_exploration.txt':
                    print(output + map)
                    tmp = map.split('.')
                    name = tmp[0]
                    image = os.path.join(input, map)
                    param_obj = ParameterObj()
                    compute_voronoi_graph(image, param_obj, True, name, bormann, filepath=output)
