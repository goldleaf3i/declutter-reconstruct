import os
import tabulate

import cv2


def sort_percentage(par):
    return par[3]


def sort_pixel(par):
    return par[3]


def compute_color_count_pixel(input_path, arr):
    for map in os.listdir(input_path):
        split = map.split('.')
        if split[-1] == 'png':
            print('starting map: ', map)
            p = os.path.join(input_path, map)
            image = cv2.imread(p, flags=cv2.IMREAD_GRAYSCALE)
            im1 = image.copy()
            im2 = image.copy()
            _, im1 = cv2.threshold(im1, 230, 255, cv2.THRESH_BINARY)
            _, im2 = cv2.threshold(im2, 150, 255, cv2.THRESH_BINARY)
            black = 0
            white = 0
            for y in range(image.shape[0]):
                for x in range(image.shape[1]):
                    pixel1 = im1[(y, x)]
                    pixel2 = im2[(y, x)]
                    if pixel1 == 255:
                        white += 1
                    if pixel2 == 0:
                        black += 1
            bw = black + white
            arr.append([map, white, black, bw])
    return arr


def compute_percentage():
    initial_path = './../data/INPUT/IMGs/'
    folders = ['ubremen-cartesium', 'Bushong', 'Frankton', 'Freiburg_Building_079', 'Intel_Reserach_Lab', 'Keweenaw',
               'Maguayo', 'Moonachie']
    for folder in folders:
        print('starting folder: ', folder)
        arr = []
        tab = [['map name', 'count_pixel_white', 'count_pixel_black', 'count_pixel_b&w', 'percentage']]
        input_path = os.path.join(initial_path, folder)
        compute_color_count_pixel(input_path, arr)
        maximum = 0
        for el in arr:
            if el[3] > maximum:
                maximum = el[3]
        arr.sort(key=sort_percentage)
        for el in arr:
            perc = (el[3]/maximum) * 100
            el.append(str(perc) + '%')
            tab.append(el)
        filename = os.path.join(input_path, 'percentage_exploration.txt')
        file = open(filename, 'w+')
        # tab = tabulate.tabulate(tab, headers='firstrow', tablefmt="latex")
        tab = tabulate.tabulate(tab, headers='firstrow', tablefmt="github")
        file.write("Percentage of exploration \n%s" % tab)
        file.close()


def compute_color_pixel_area():
    initial_path = './../data/INPUT/IMGs/'
    for folder in os.listdir(initial_path):
        print('starting folder: ', folder)
        tab = [['map name', 'count_pixel_white', 'count_pixel_black', 'count_pixel_b&w']]
        arr = []
        input_path = os.path.join(initial_path, folder)
        compute_color_count_pixel(input_path, arr)
        arr.sort(key=sort_pixel)
        tab = tab + arr
        filename = os.path.join(input_path, 'pixel_color_count.txt')
        file = open(filename, 'w+')
        # tab = tabulate.tabulate(tab, headers='firstrow', tablefmt="latex")
        tab = tabulate.tabulate(tab, headers='firstrow', tablefmt="github")
        file.write("Area pixel color: \n%s" % tab)
        file.close()


if __name__ == '__main__':
    # compute_percentage()
    compute_color_pixel_area()
