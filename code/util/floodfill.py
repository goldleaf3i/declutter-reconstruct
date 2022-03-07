import os
from random import randint

import cv2

if __name__ == '__main__':
    input_path = './../data/INPUT/gt_colored//'
    for map in os.listdir(input_path):
        output_path = input_path + map
        tmp = cv2.imread(input_path + map)
        img = tmp.copy()
        img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        th, img = cv2.threshold(img, 230, 255, cv2.THRESH_BINARY)
        img = cv2.cvtColor(img, cv2.COLOR_GRAY2RGB)
        colors = []
        for y in range(img.shape[0] - 1):
            for x in range(img.shape[1] - 1):
                pixel = list(img[(y, x)])
                if pixel == [255, 255, 255]:
                    random_color = (randint(1, 254), randint(1, 254), randint(1, 254))
                    flag = False
                    while not flag:
                        if random_color in colors:
                            random_color = (randint(1, 254), randint(1, 254), randint(1, 254))
                        else:
                            flag = True
                    cv2.floodFill(img, None, (x, y), random_color, flags=8)
        cv2.imwrite(output_path, img)
