import os

import matplotlib.colors
import tabulate

import matplotlib.pyplot as plt

from PIL import Image
import parameters as p


def get_colors(pix_data, map_image):
    colors = []
    dictionary = {}
    # type dictionary
    for y in range(map_image.size[1]):
        for x in range(map_image.size[0]):
            if pix_data[x, y] != (0, 0, 0, 255):
                color = pix_data[x, y]
                if color not in colors:
                    colors.append(color)
                    dictionary[color] = [(x, y)]
                else:
                    points = dictionary[color]
                    points.append((x, y))
                    dictionary[color] = points
    return dictionary, colors


def remove_small_color(dictionary, colors, th):
    keys = dictionary.keys()
    for key in list(keys):
        if len(dictionary[key]) <= th:
            colors.remove(key)
            del dictionary[key]


def pixel_qt(val):
    return val[0]


def setup_plot():
    plt.clf()
    plt.cla()
    plt.close()
    fig, ax = plt.subplots()
    ax.set_ylabel('iou')
    ax.set_xlabel('number of pixels')
    return ax, fig


def evaluation(gt_map_path, segmentation_map_path, par, name, flag, filepath='.'):
    filename = os.path.join(filepath, 'evaluation' + name + '.txt')
    file = open(filename, 'w+')
    gt_map = Image.open(gt_map_path).convert('RGBA')
    segmentation_map = Image.open(segmentation_map_path).convert('RGBA')
    pix_data_gt = gt_map.load()
    pix_data_seg = segmentation_map.load()

    gt_dictionary, colors_gt = get_colors(pix_data_gt, gt_map)
    seg_dictionary, colors_seg = get_colors(pix_data_seg, segmentation_map)

    # print('obtained colors')
    print('colors_seg: ', len(colors_seg))
    print('colors_gt ', len(colors_gt))

    remove_small_color(gt_dictionary, colors_gt, par.threshold_color)
    # remove_small_color(seg_dictionary, colors_seg, par.threshold_color)

    print('colors_seg: ', len(colors_seg))
    print('colors_gt ', len(colors_gt))

    # ---------------------------LABELLED IMAGES----------------------------------

    tmp_gt = Image.new('L', (gt_map.size[0], gt_map.size[1]))
    pix_data_tmp_gt = tmp_gt.load()
    tmp_seg = Image.new('L', (gt_map.size[0], gt_map.size[1]))
    pix_data_tmp_seg = tmp_seg.load()
    aa = Image.open(gt_map_path).convert('RGBA')
    pix_data_aa = aa.load()
    bb = Image.open(gt_map_path).convert('RGBA')
    pix_data_bb = bb.load()
    for y in range(gt_map.size[1]):
        for x in range(gt_map.size[0]):

            pix_data_tmp_gt[x, y] = 255
            pix_data_aa[x, y] = (0, 0, 0, 255)
            for i, color in enumerate(colors_gt):
                if color == pix_data_gt[x, y]:
                    pix_data_tmp_gt[x, y] = i
                    pix_data_aa[x, y] = color

            pix_data_tmp_seg[x, y] = 255
            pix_data_bb[x, y] = (0, 0, 0, 255)
            for i, color in enumerate(colors_seg):
                if color == pix_data_seg[x, y] and (pix_data_gt[x, y] in colors_gt):
                    pix_data_tmp_seg[x, y] = i
                    pix_data_bb[x, y] = color

    Image.Image.save(aa, os.path.join(filepath, 'gt_used.png'))
    Image.Image.save(bb, os.path.join(filepath, 'seg_used.png'))

    # --------------------------------MATRICES----------------------------------------

    overlap_matrix = [[0] * len(colors_gt) for i in range(len(colors_seg))]
    union_matrix = [[0] * len(colors_gt) for i in range(len(colors_seg))]

    # overlap matrix
    for y in range(gt_map.size[1]):
        for x in range(gt_map.size[0]):
            pix1 = pix_data_tmp_seg[x, y]
            pix2 = pix_data_tmp_gt[x, y]
            if pix1 != 255 and pix2 != 255:
                overlap_matrix[pix1][pix2] += 1

    # union matrix
    for i, seg_col in enumerate(colors_seg):
        for j, gt_col in enumerate(colors_gt):
            union_matrix[i][j] = len(seg_dictionary[seg_col]) + len(gt_dictionary[gt_col]) - overlap_matrix[i][j]

    # print('obtained matrices')

    # --------------------------------TABULATION------------------------------------

    tab_room_seg_to_gt = [['len room', 'iou room', 'color']]
    tab_room_gt_to_seg = [['len room', 'iou room', 'color']]
    tab_indexes = [['prec micro', 'prec macro', 'rec micro', 'rec macro', 'iou mean seg',
                    'iou seg', 'iou mean gt', 'iou gt']]

    # --------------------------------PRECISION--------------------------------------

    precision_micro = 0
    precision_macro = 0
    pdenominator_macro = 0
    iou_macro_seg_to_gt = 0
    iou_micro_mean_seg_to_gt = 0
    ax, fig = setup_plot()
    ax.set_title('IOU from seg to gt')
    for i, seg_color in enumerate(colors_seg):
        max_overlap = 0
        max_union = 1
        for j, gt_color in enumerate(colors_gt):
            if overlap_matrix[i][j] > max_overlap:
                max_overlap = overlap_matrix[i][j]
                max_union = union_matrix[i][j]
        iou_macro_seg_to_gt += max_union
        iou_micro_mean_seg_to_gt += (max_overlap / max_union) / len(colors_seg)
        iou_micro_seg_to_gt = (max_overlap / max_union)
        col = (seg_color[0] / 255, seg_color[1] / 255, seg_color[2] / 255)
        plt.scatter(len(seg_dictionary[seg_color]), iou_micro_seg_to_gt, c=matplotlib.colors.rgb2hex(col))
        tab_room_seg_to_gt.append([len(seg_dictionary[seg_color]), iou_micro_seg_to_gt, seg_color])
        precision_micro += max_overlap / len(seg_dictionary[seg_color])
        precision_macro += max_overlap
        pdenominator_macro += len(seg_dictionary[seg_color])
    iou_macro_seg_to_gt = precision_macro / iou_macro_seg_to_gt
    precision_micro /= len(colors_seg)
    precision_macro /= pdenominator_macro

    title = os.path.join(filepath, 'seg_to_gt' + name + '.png')
    plt.savefig(title)

    # --------------------------------RECALL--------------------------------------

    recall_micro = 0
    recall_macro = 0
    iou_macro_gt_to_seg = 0
    iou_micro_mean_gt_to_seg = 0
    rdenominator_macro = 0
    ax, fig = setup_plot()
    ax.set_title('IOU from gt to seg')
    for j, gt_color in enumerate(colors_gt):
        max_overlap = 0
        max_union = 1
        for i, seg_color in enumerate(colors_seg):
            if overlap_matrix[i][j] > max_overlap:
                max_overlap = overlap_matrix[i][j]
                max_union = union_matrix[i][j]
        iou_macro_gt_to_seg += max_union
        iou_micro_mean_gt_to_seg += (max_overlap / max_union) / len(colors_gt)
        iou_micro_gt_to_seg = (max_overlap / max_union)
        col = (gt_color[0] / 255, gt_color[1] / 255, gt_color[2] / 255)
        plt.scatter(len(gt_dictionary[gt_color]), iou_micro_gt_to_seg, c=matplotlib.colors.rgb2hex(col))
        tab_room_gt_to_seg.append([len(gt_dictionary[gt_color]), iou_micro_gt_to_seg, gt_color])
        recall_micro += max_overlap / len(gt_dictionary[gt_color])
        recall_macro += max_overlap
        rdenominator_macro += len(gt_dictionary[gt_color])
    iou_macro_gt_to_seg = recall_macro / iou_macro_gt_to_seg
    recall_micro /= len(colors_gt)
    recall_macro /= rdenominator_macro

    title = os.path.join(filepath, 'gt_to_seg' + name + '.png')
    plt.savefig(title)

    # -----------------------------------TRANSFORMING IN %---------------------------------------------
    precision_micro *= 100
    precision_macro *= 100
    recall_micro *= 100
    recall_macro *= 100
    iou_macro_seg_to_gt *= 100
    iou_macro_gt_to_seg *= 100
    iou_micro_mean_gt_to_seg *= 100
    iou_micro_mean_seg_to_gt *= 100

    # -----------------------------------FILE TXT---------------------------------------------

    tmp = tab_room_seg_to_gt[1:]
    tmp.sort(key=lambda elem: elem[0])
    tab_room_seg_to_gt[1:] = tmp
    tab1 = tabulate.tabulate(tab_room_seg_to_gt, headers="firstrow", tablefmt="latex", floatfmt=".3f")

    tmp1 = tab_room_gt_to_seg[1:]
    tmp1.sort(key=lambda elem: elem[0])
    tab_room_gt_to_seg[1:] = tmp1
    tab2 = tabulate.tabulate(tab_room_gt_to_seg, headers="firstrow", tablefmt="latex", floatfmt=".3f")

    tab_indexes.append([precision_micro, precision_macro, recall_micro, recall_macro, iou_micro_mean_seg_to_gt,
                        iou_macro_seg_to_gt, iou_micro_mean_gt_to_seg, iou_macro_gt_to_seg])
    par.tab_sliding.append([par.filter_level, par.th1, iou_micro_mean_seg_to_gt, iou_macro_seg_to_gt,
                            iou_micro_mean_gt_to_seg, iou_macro_gt_to_seg])
    par.tab_comparison[0].append(name)
    par.tab_comparison[1].append(precision_micro)
    par.tab_comparison[2].append(precision_macro)
    par.tab_comparison[3].append(recall_micro)
    par.tab_comparison[4].append(recall_macro)
    par.tab_comparison[5].append(iou_micro_mean_seg_to_gt)
    par.tab_comparison[6].append(iou_macro_seg_to_gt)
    par.tab_comparison[7].append(iou_micro_mean_gt_to_seg)
    par.tab_comparison[8].append(iou_macro_gt_to_seg)
    # par.tab_comparison.append(
        # [name, precision_micro, precision_macro, recall_micro, recall_macro, iou_micro_mean_seg_to_gt,
         # iou_macro_seg_to_gt, iou_micro_mean_gt_to_seg, iou_macro_gt_to_seg])
    tab3 = tabulate.tabulate(tab_indexes, headers='firstrow', tablefmt="latex", floatfmt=".3f")
    file.write("%s\n\n\n" % tab3)
    file.write("Evaluation from ground through to segmentation map\\\\\n%s\n\n\n" % tab2)
    file.write("Evaluation from segmentation map to ground through \\\\\n%s\n\n\n" % tab1)
    if flag:
        flpt = filepath.split('/')[-2]
        tab4 = tabulate.tabulate(par.tab_comparison, headers='firstrow', tablefmt="latex", floatfmt=".3f", numalign='center', stralign='left')
        file.write("\\begin{table}[ht]\n\\centering\n")
        file.write(tab4)
        file.write("\n\\caption{Comparison}\n\\label{tab:" + flpt + "}\n\\end{table}\n\n")
        par.total_index[0].append(flpt)
        par.total_index[1].append(precision_micro)
        par.total_index[2].append(precision_macro)
        par.total_index[3].append(recall_micro)
        par.total_index[4].append(recall_macro)
        par.total_index[5].append(iou_micro_mean_seg_to_gt)
        par.total_index[6].append(iou_macro_seg_to_gt)
        par.total_index[7].append(iou_micro_mean_gt_to_seg)
        par.total_index[8].append(iou_macro_gt_to_seg)
    else:
        if name == '1 morphological':
            arr = par.total_index_morphological
        if name == '2 distance':
            arr = par.total_index_distance
        if name == '3 voronoi':
            arr = par.total_index_voronoi
        flpt = filepath.split('/')[-1]
        # par.total_index_other.append([flpt + '_' + name, precision_micro, precision_macro, recall_micro, recall_macro,
        #                              iou_micro_mean_seg_to_gt, iou_macro_seg_to_gt, iou_micro_mean_gt_to_seg,
        #                              iou_macro_gt_to_seg])
        arr[0].append(flpt + '_' + name)
        arr[1].append(precision_micro)
        arr[2].append(precision_macro)
        arr[3].append(recall_micro)
        arr[4].append(recall_macro)
        arr[5].append(iou_micro_mean_seg_to_gt)
        arr[6].append(iou_macro_seg_to_gt)
        arr[7].append(iou_micro_mean_gt_to_seg)
        arr[8].append(iou_macro_gt_to_seg)
    file.close()


def evaluate_bormann(map_name, dir_name, par):
    map_name = map_name
    if not os.path.exists('./data/OUTPUT/evaluation_borman/'):
        os.mkdir('./data/OUTPUT/evaluation_borman/')
    if not os.path.exists('./data/OUTPUT/evaluation_borman/' + dir_name):
        os.mkdir('./data/OUTPUT/evaluation_borman/' + dir_name)
    output_path = './data/OUTPUT/evaluation_borman/' + dir_name + '/' + map_name
    input_seg_path = './data/INPUT/other_methods/' + dir_name + '/'
    if os.path.exists(input_seg_path[:-1]):
        if not os.path.exists(output_path):
            os.mkdir(output_path)
        gt_map = './data/INPUT/gt_colored/' + dir_name + '/' + map_name + '.png'
        for i in range(0, 3):
            if i == 0:
                segmentation_map = input_seg_path + map_name + '_segmented_1morphological.png'
                if os.path.exists(segmentation_map):
                    name = '1 morphological'
                    evaluation(gt_map, segmentation_map, par, name, False, filepath=output_path)

            if i == 1:
                segmentation_map = input_seg_path + map_name + '_segmented_2distance.png'
                if os.path.exists(segmentation_map):
                    name = '2 distance'
                    evaluation(gt_map, segmentation_map, par, name, False, filepath=output_path)

            if i == 2:
                segmentation_map = input_seg_path + map_name + '_segmented_3voronoi.png'
                if os.path.exists(segmentation_map):
                    name = '3 voronoi'
                    evaluation(gt_map, segmentation_map, par, name, False, filepath=output_path)


def main():
    map_names = ['photo_2020-01-08_09-53-31', 'freiburg_building101', 'freiburg_building52', 'g4s_y2', 'map15', 'map17',
                 'map23', 'map_with_clutter', 'NOGT-intel_map', 'ubremen-cartesium-demo4', 'freiburg_building79']
    for map in map_names:
        output_path = './../data/OUTPUT/evaluation_borman/' + map
        input_seg_path = './../data/INPUT/other_methods/'
        if not os.path.exists(output_path):
            os.mkdir(output_path)
        gt_map = './../data/INPUT/gt_colored/' + map + '.png'
        par = p.ParameterObj()
        if os.path.exists(gt_map):
            for i in range(0, 3):
                if i == 0:
                    segmentation_map = input_seg_path + map + '_segmented_1morphological.png'
                    if os.path.exists(segmentation_map):
                        name = '_1morphological'
                        evaluation(gt_map, segmentation_map, par, name, False, filepath=output_path)

                if i == 1:
                    segmentation_map = input_seg_path + map + '_segmented_2distance.png'
                    if os.path.exists(segmentation_map):
                        name = '_2distance'
                        evaluation(gt_map, segmentation_map, par, name, False, filepath=output_path)

                if i == 2:
                    segmentation_map = input_seg_path + map + '_segmented_3voronoi.png'
                    if os.path.exists(segmentation_map):
                        name = '_3voronoi'
                        evaluation(gt_map, segmentation_map, par, name, False, filepath=output_path)


if __name__ == '__main__':
    main()
