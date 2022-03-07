'''
funzioni utili alla costruzione del layout delle stanze partendo da un immagine nota della mappa, dalla quale non si conosce nulla.
'''
import math

import cv2
import numpy
from shapely.geometry import Polygon
from shapely.ops import cascaded_union
from sklearn.cluster import DBSCAN

import util.matrice as mtx
from object import ExtendedSegment as ext
from object import Line as rt
from object import Segment as sg
from object import Space as sp
from object import Surface as fc
from util import mean_shift as ms
from util import rototranslation as rotot
import os
import numpy as np


def start_canny_and_hough(image, param_obj):
	image_2 = cv2.cvtColor(image.copy(), cv2.COLOR_BGR2GRAY)
	image_3 = cv2.bitwise_not(image_2.copy())

	# CANNY AND HOUGH to find walls. it's an edge detection method

	# canny
	# canny_edges = cv2.Canny(image, low_thrash, high_thresh, apertureSize=param_obj.apertureSize)
	# canny_edges_laplace = cv2.Canny(aaa, low_thrash, high_thresh, apertureSize=param_obj.apertureSize)

	# hough
	walls = cv2.HoughLinesP(image_3, param_obj.rho, param_obj.theta, param_obj.thresholdHough, param_obj.minLineLength, param_obj.maxLineGap)

	 # TODO upgrade this version.
	if cv2.__version__[0] == '3':
		walls = [i[0]for i in walls]
	elif cv2.__version__[0] == '2':
		walls = walls[0]
	else:
		raise EnvironmentError('Opencv Version Error. You should have OpenCv 2.* or 3.*')
	return walls, 0


def flip_lines(lines, height):
	# flip the y of lines, because origin of pixel is top left, instead i need bottom left
	for line in lines:
		line[1] = height - line[1]
		line[3] = height - line[3]
	return lines


def create_walls(lines):
	# transform lines in object of type Segment, and return list of Segment
	walls = []
	for wall in lines:
		x1 = float(wall[0])
		y1 = float(wall[1])
		x2 = float(wall[2])
		y2 = float(wall[3])
		walls.append(sg.Segment(x1, y1, x2, y2))
	return walls


def external_contour(img_rgb):
	# transforming the image in gray scale to use cv2 functions.
	img_gray = cv2.cvtColor(img_rgb, cv2.COLOR_BGR2GRAY)
	# highlighting all the pixels with value > 253
	ret, thresh = cv2.threshold(img_gray.copy(), 253, 255, cv2.THRESH_BINARY_INV)
	if cv2.__version__[0] == '3':
		# finding all the contours of this image
		img_contour, contours, hierarchy = cv2.findContours(thresh.copy(), cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
		# removing the external contour, the rectangular shape of the image
		contours.pop(0)
		# draw all this contours
		img_contour = cv2.drawContours(img_contour.copy(), contours, -1, (0, 255, 0), 3, cv2.LINE_8)
		# finding all the contours of this new image found with cv2.drawContours()
		img_contour, contours, hierarchy = cv2.findContours(img_contour, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
	else:
		raise EnvironmentError('Opencv Version Error. You should have OpenCv 3.*')

	contours = sorted(contours, key=cv2.contourArea, reverse=True)[:10]
	contours_max = contours[1]
	perimeter = cv2.arcLength(contours_max, True)
	approx = cv2.approxPolyDP(contours_max, 0.0002 * perimeter, True)
	screen_cnt = approx

	# flip the contour
	# for c in screen_cnt:
		# c[0][1] = img_rgb.shape[0]-1 - c[0][1]

	vertices = []
	for c in screen_cnt:
		vertices.append([float(c[0][0]), float(c[0][1])])

	return screen_cnt, vertices


def cluster_ang(h, min_offset, walls, num_min=3, min_lenght=3, diagonals=True):
	# make angular clusters
	# make clusters centers with mean-shift
	cluster_centers = ms.mean_shift(h, min_offset, walls)
	# there is some angular clusters caused by small line segment. they are noise.
	# TODO check that elimination of angular clusters is not a problem
	# delete these clusters from list clusters_centers and delete also the segments from walls.
	indexes = ms.indexes_to_be_deleted(num_min, min_lenght, cluster_centers, walls, diagonals)
	# selected the indexes of angular clusters and walls to be deleted,remove from walls and cluster_centers,
	# starting from higher indexes
	for i in sorted(indexes, reverse=True):
		del walls[i]
		del cluster_centers[i]
	# for clusters very similar I'll do a simple average
	united = ms.merge_similar_cluster(cluster_centers)
	while united:
		united = ms.merge_similar_cluster(cluster_centers)
	# assign clusters to walls
	walls = sg.assign_angular_cluster(walls, cluster_centers)
	# compute list of angular clusters
	angular_clusters = []
	for wall in walls:
		angular_clusters.append(wall.angular_cluster)
	return indexes, walls, angular_clusters


def extend_line(spatial_clusters, walls, x_min, x_max, y_min, y_max):
	# compute extended lines
	extended_lines = rt.create_extended_lines(spatial_clusters, walls, x_min, y_min)
	# extended_lines have a point, an angular_cluster and a spatial_cluster, to draw them we need 2 points.
	# compute list of extended_segments
	extended_segments = ext.create_extended_segments(x_min, x_max, y_min, y_max, extended_lines)
	return extended_lines, extended_segments


def classification_surface(vertices, cells, threshold):
	# classification of cells(surfaces) that are selected by extended segments
	contour = Polygon(vertices)
	# add buffer to clean contour
	# per pulire il contorno che ha dei self_interserctin, splitto il poligono e lo faccio diventare un MULTIPOLYGON
	contour = contour.buffer(0)
	polygon_cells = []
	indexes = []
	cells_out = []
	cells_partial = []
	points = []
	for index, f in enumerate(cells):
		points = []
		for b in f.borders:
			points.append([float(b.x1), float(b.y1)])
			points.append([float(b.x2), float(b.y2)])
		# obtain vertices of cell without repetition
		points = sort_and_deduplicate(points)
		# ordered clockwise (senso orario)
		x = [p[0] for p in points]
		y = [p[1] for p in points]
		global centroid
		centroid = (sum(x) / len(points), sum(y) / len(points))
		points.sort(key=algo)
		# create polygon of cell
		cell = Polygon(points)
		# if polygon of cell doesn't intersect the contour, the cell is out.
		if not cell.intersects(contour):
			f.set_out(True)
			f.set_partial(False)
			cells_out.append(f)
		# if polygon of cell does intersect the contour
		if cell.intersects(contour):
			# if intersection is grater than threshold the cell is inside
			if cell.intersection(contour).area >= cell.area/threshold:
				f.set_out(False)
			# otherwise is external
			else:
				f.set_out(True)
				f.set_partial(False)
				cells_out.append(f)
	# TODO cells_partial are not calculated here!!!
	# remove from cells_out the cells_partial
	cells_out = list(set(cells_out)-set(cells_partial))
	# removed from cells the cells_out and cells_partials
	cells = list(set(cells) - set(cells_out))
	cells = list(set(cells) - set(cells_partial))
	return cells, cells_out, polygon_cells, indexes, cells_partial, contour, centroid, points


def algo(p):
	'''
	riordina i punti in senso orario
	'''
	return (math.atan2(p[0] - centroid[0], p[1] - centroid[1]) + 2 * math.pi) % (2*math.pi)


def sort_and_deduplicate(l):
	# delete copy from a list of pairs
	return list(uniq(sorted(l, reverse=True)))


def uniq(lst):
	last = object()
	for item in lst:
		if item == last:
			continue
		yield item
		last = item


def create_polygon(cells, cells_out, cells_partial):
	# create polygon starting from cells
	# polygon cells
	cells_polygon = []
	for f in cells:
		points = []
		for b in f.borders:
			points.append([float(b.x1), float(b.y1)])
			points.append([float(b.x2), float(b.y2)])
		points = sort_and_deduplicate(points)
		x = [p[0] for p in points]
		y = [p[1] for p in points]
		global centroid
		centroid = (sum(x) / len(points), sum(y) / len(points))
		points.sort(key=algo)
		cell = Polygon(points)
		cells_polygon.append(cell)

	# polygon cells_out
	polygon_out = []
	for f in cells_out:
		points = []
		for b in f.borders:
			points.append([float(b.x1), float(b.y1)])
			points.append([float(b.x2), float(b.y2)])
		points = sort_and_deduplicate(points)
		x = [p[0] for p in points]
		y = [p[1] for p in points]
		centroid = (sum(x) / len(points), sum(y) / len(points))
		points.sort(key=algo)
		cell = Polygon(points)
		polygon_out.append(cell)

	# polygon cells_partial
	polygon_partial = []
	for f in cells_partial:
		points = []
		for b in f.borders:
			points.append([float(b.x1),float(b.y1)])
			points.append([float(b.x2),float(b.y2)])
		points = sort_and_deduplicate(points)
		x = [p[0] for p in points]
		y = [p[1] for p in points]
		centroid = (sum(x) / len(points), sum(y) / len(points))
		points.sort(key=algo)
		cell = Polygon(points)
		polygon_partial.append(cell)

	return cells_polygon, polygon_out, polygon_partial, centroid


def create_matrices(cells, sigma=0.00000125, val=0):
	# sigma was 0.1
	matrix_l = mtx.create_matrix_l(cells, sigma, val)
	matrix_d = mtx.create_matrix_d(matrix_l)
	matrix_d_inv = matrix_d.getI()
	matrix_m = matrix_d_inv.dot(matrix_l)
	matrix_m = mtx.symmetry(matrix_m)
	X = 1-matrix_m
	return matrix_l, matrix_d, matrix_d_inv, X


def DB_scan(eps, min_points, X, celle_poligoni):
	cluster_cells = clustering_dbscan_cells(eps, min_points, X)
	return cluster_cells


def clustering_dbscan_cells(eps, min_samples, X):
	# compute dbscan clustering on cells, take in input eps (maximum distance between 2 sample to be considered in the
	# same neighborhood), min_samples (number of samples in a neighborhood for point to be considered a core point)
	# and X (1-local affinity matrix among cells).

	af = DBSCAN(eps, min_samples, metric="precomputed").fit(X)
	return af.labels_


def create_space(clusters_cells, cells, polygon_cells):
	rooms, spaces = merge_cells(clusters_cells, cells, polygon_cells)
	return rooms, spaces


def merge_cells(clusters, cells, polygon_cells):
	# polygon of cells of same cluster will be merged in a single polygon, which is the room.

	# spaces are same thing as rooms instead I create an object space
	rooms = []
	spaces = []

	for l in set(clusters):
		polygons = []
		matching_cells = []
		for index, cluster in enumerate(clusters):
			if (l == cluster) and not cells[index].out:
				polygons.append(polygon_cells[index])
				matching_cells.append(cells[index])
		room = cascaded_union(polygons)
		rooms.append(room)
		space = sp.Space(polygons, room, matching_cells, index)
		spaces.append(space)
	return rooms, spaces


def get_distance_matrix(walls, minLateralSeparation= 7):
	'''
	calcola la matrice delle distanze tra tutti i segmenti
	'''

	#questo per metodo di classicazione=2
	matrix = []
	min=0
	for segmento1 in walls:
		row = []
		for segmento2 in walls:
			min = sg.segments_distance(segmento1.x1, segmento1.y1, segmento1.x2, segmento1.y2, segmento2.x1, segmento2.y1, segmento2.x2, segmento2.y2)
			#if segmento1.angular_cluster == segmento2.angular_cluster and min <= minLateralSeparation :
			row.append(min)
			# if min > minLateralSeparation:
# 				min = 9999	
# 				row.append(min)		
# 			else:
# 				row.append(min)
# 			

		matrix.append(row)

	return matrix


def compute_clustering(matrix):
	# hierarchical clustering
	af = DBSCAN(eps=7, min_samples=1, metric="precomputed").fit(matrix)
	return af.labels_


def get_wall_clusters(walls, angular_clusters):
	# compute wall cluster.

	# obtain angular_clusters
	ang = set(angular_clusters)

	# it's a matrix of type [[..,..,..], [..,..,..,..]] based on number of angular clusters
	angular_ordered = []
	for c in ang:
		row = []
		for wall in walls:
			if wall.angular_cluster == c:
				row.append(wall)
		angular_ordered.append(row)

	# obtain affinity matrix of segments for each angular cluster
	# every element of m contains a matrix of distances on which compute clustering
	m = []
	for ang in angular_ordered:
		matrix = get_distance_matrix(ang)
		m.append(matrix)

	# for each angular cluster obtain a set of label from wall clustering.
	label = []
	for mat in m:
		label.append(compute_clustering(mat))

	# set labels to all segments (every segment has a wall labels)
	walls = sg.set_segment_label2(angular_ordered, label)

	# create list of wall_cluster
	wall_cluster = []
	for segment in walls:
		wall_cluster.append(segment.wall_cluster)
	return wall_cluster


def get_representatives(walls, wall_cluster):
	# compute representatives segments of a cluster
	representatives = []
	for cluster in set(wall_cluster):
		lista = []
		distance_vector = []
		# compute list of elements with same wall_cluster
		for wall in walls:
			if wall.wall_cluster == cluster:
				lista.append(wall)

		# take first element to project all the others elements of same cluster on a line passing to centre of this element.
		candidate = lista[0]
		x = (candidate.x1+candidate.x2)/2
		y = (candidate.y1+candidate.y2)/2
		angle = candidate.angular_cluster * (180/math.pi)

		# take all the projections on the orthogonal line of candidate and do a rotary translation of points.
		X = []
		Y = []
		for i in lista:
			(x_projected, y_projected) = sg.get_projected_points(candidate, i)
			X.append(x_projected)
			Y.append(y_projected)

		my_function = rotot.transform_points(x, y, angle)
		for px, py in zip(X, Y):
			# take only x, y or is 0 or very close to 0
			distance_vector.append(my_function(px,py)[0])

		# take median of list distance_vector
		index_representative = numpy.argsort(distance_vector)[len(distance_vector)//2-1]
		# solo questo deve rimanere
		representatives.append(lista[index_representative])
	return representatives


def new_spatial_cluster(walls, representatives_segments, param_obj):
	# creo la lista di tutti i cluster spaziali e la restituisco. Inoltre Per ogni segmento
	# in walls il cui cluster spaziale non e' ancora stato settato,lo setto controllando che appartenga allo stesso wall_cluster del rappresentante.

	# compute list of spatial clusters
	spatial_clusters = []
	for wall in walls:
		if wall.spatial_cluster is not None:
			spatial_clusters.append(wall.spatial_cluster)

	for cluster in list(set(spatial_clusters)):
		# put together wall clusters with same spatial_clusters
		same_wall_cluster = []
		for segment in representatives_segments:
			if segment.spatial_cluster == cluster:
				same_wall_cluster.append(segment.wall_cluster)

		same_wall_cluster = list(set(same_wall_cluster))

		for segment in walls:
			if segment.wall_cluster in same_wall_cluster:
				segment.set_spatial_cluster(cluster)

	# handle outliers

	# merge to the closest cluster every segment of outliers. if doesn't exist the cluster, create a new one.
	# obtain the outliers
	outliers = []
	for wall in walls:
		if wall.wall_cluster == -1:
			outliers.append(wall)
	set_cluster_spaziale_to_outliers(walls, outliers, representatives_segments, param_obj.sogliaLateraleClusterMura)

	spatial_cluster = []
	for wall in walls:
		spatial_cluster.append(wall.spatial_cluster)

	return spatial_cluster


def set_cluster_spaziale_to_outliers(walls, outliers, representatives_segments, lateral_threshold):
	# set spatial clusters to outliers. try to merge to spatial cluster already present
	# if an outlier is very close to a cluster, merge to it, otherwise create a new one.

	for outlier in outliers:
		min_distance_to_cluster = 999999
		representative = representatives_segments[0]
		for segment in representatives_segments:
			dist = sg.lateral_separation(outlier, segment)
			if outlier.angular_cluster == segment.angular_cluster:
				if dist <= min_distance_to_cluster:
					min_distance_to_cluster = dist
					representative = segment
		# assign to outlier same spatial cluster of selected representative
		if min_distance_to_cluster <= lateral_threshold:
			outlier.spatial_cluster = representative.spatial_cluster
			outlier.wall_cluster = representative.wall_cluster
		else:
			# create new cluster (take as index position in walls of outliers)
			new_cluster = walls.index(outlier)
			outlier.spatial_cluster = new_cluster
			# put new cluster among representatives otherwise outliers outliers cannot be merged as group but only associated to other groups
			representatives_segments.append(outlier)


def get_partial_cells(cells, cells_out, border_coordinates):
	# compute the partial_cells

	# cells that aren't out, but are adjacent to border of img (adjacent_cell < len(border)) are partial.
	partial_cells = []
	for c in cells:
		for co in cells_out:
			if fc.adjacent(c, co):
				if fc.common_edge(c, co)[0].weight < 0.05:
					# if a cell is partial, is not out.
					c.set_out(False)
					c.set_partial(True)
					partial_cells.append(c)
		# if the cell has a border attach to the border of image is partial
		for border in c.borders:
			x_list = [border_coordinates[0], border_coordinates[2]]
			y_list = [border_coordinates[1], border_coordinates[3]]
			if (border.x1 or border.x2) in x_list or (border.y1 or border.y2) in y_list:
				# if a cell is partial, is not out.
				c.set_out(False)
				c.set_partial(True)
				partial_cells.append(c)
	# polygons partial cells
	partial_polygons = []
	for f in partial_cells:
		points = []
		for b in f.borders:
			points.append([float(b.x1), float(b.y1)])
			points.append([float(b.x2), float(b.y2)])
		points = sort_and_deduplicate(points)
		x = [p[0] for p in points]
		y = [p[1] for p in points]
		global centroid
		centroid = (sum(x) / len(points), sum(y) / len(points))
		points.sort(key=algo)
		cell = Polygon(points)
		partial_polygons.append(cell)
	return partial_cells, partial_polygons


def get_out_polygons(cells_out):
	# compute polygons related to cells_out
	polygons_out = []
	for f in cells_out:
		points = []
		for b in f.borders:
			points.append([float(b.x1), float(b.y1)])
			points.append([float(b.x2), float(b.y2)])
		points = sort_and_deduplicate(points)
		x = [p[0] for p in points]
		y = [p[1] for p in points]
		global centroid
		centroid = (sum(x) / len(points), sum(y) / len(points))
		points.sort(key=algo)
		cell = Polygon(points)
		polygons_out.append(cell)
	return polygons_out


def set_weight_offset(extended_segments, x_max, x_min, y_max, y_min):
	border_lines = []
	for segment in extended_segments:
		if (segment.x1 == x_max and segment.x2 == x_max) or (segment.x1 == x_min and segment.x2 == x_min) or (segment.y1 == y_max and segment.y2 == y_max) or (segment.y1 == y_min and segment.y2 == y_min):
			segment.weight = 1
			border_lines.append((segment.angular_cluster, segment.spatial_cluster))
	return border_lines


def assign_orebro_direction(comp, walls):
	angular_clusters = []
	for wall in walls:
		absolute_min = 1000
		index = 1000
		# print('wall direction: ', wall.direction)
		for i, direction in enumerate(comp):
			# print('orebro direction: ', direction)
			minimum = abs(direction - wall.direction)
			# print('minimum: ', minimum)
			if minimum < absolute_min:
				absolute_min = minimum
				index = i
		if index % 2 == 0:
			wall.set_angular_cluster(comp[index])
		else:
			wall.set_angular_cluster(comp[index - 1])
		# print('new angular cluster: ', wall.angular_cluster)
		angular_clusters.append(wall.angular_cluster)
	return angular_clusters
