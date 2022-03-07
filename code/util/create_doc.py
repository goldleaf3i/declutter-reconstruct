import os
import math
from PIL import Image

import runMe

skip_choice = True
types = ['/2_Hough.png', '/4_Contour.png', '/7b_DBSCAN_th1.png', '/8b_rooms_th1.png', '/8b_rooms_th1_on_map.png', '/8b_rooms_th1_on_map_prediction.png', '/8b_rooms_th1_on_map_th1.png', '/Extended_Lines/7a_extended_lines_th1.png']
names = ['Hough_collage.png', 'Contour_collage.png', 'dbscan_collage.png', 'rooms_collage.png', 'segmentation_collage.png', 'segmentation_prediction_collage.png', 'segmentation_lines_collage.png', 'extended_lines_collage.png']


def create_collage(cols, rows, listofimages, output_path, name):
	img = listofimages[0]
	width = cols * img.width + 10 * cols
	height = rows * img.height + 10 * rows
	thumbnail_width = width//cols
	thumbnail_height = height//rows
	size = thumbnail_width, thumbnail_height
	new_im = Image.new('RGB', (width, height), 'white')
	ims = []
	for im in listofimages:
		im.thumbnail(size)
		ims.append(im)
	i = 0
	x = 0
	y = 0
	for col in range(cols):
		for row in range(rows):
			new_im.paste(ims[i], (x, y))
			i += 1
			y += thumbnail_height + 10
		x += thumbnail_width + 10
		y = 0

	new_im.save(output_path + name)


def ask_collage_image():
	while True:
		print('What kind of image do you want to use?\n1     Hough\n2     contour\n3     dbscan\n4     rooms\n5     '
			  'rooms on map\n6     rooms prediction\n7     rooms and lines\n8     extended lines\n')
		try:
			val = int(input('insert the number of action selected\n'))
			if val == 1:
				return '/2_Hough.png', 'Hough_collage.png'
			elif val == 2:
				return '/4_Contour.png', 'Contour_collage.png'
			elif val == 3:
				return '/7b_DBSCAN_th1.png', 'dbscan_collage.png'
			elif val == 4:
				return '/8b_rooms_th1.png', 'rooms_collage.png'
			elif val == 5:
				return '/8b_rooms_th1_on_map.png', 'segmentation_collage.png'
			elif val == 6:
				return '/8b_rooms_th1_on_map_prediction.png', 'segmentation_prediction_collage.png'
			elif val == 7:
				return '/8b_rooms_th1_on_map_th1.png', 'segmentation_lines_collage.png'
			elif val == 8:
				return '/Extended_Lines/7a_extended_lines_th1.png', 'extended_lines_collage.png'
		except ValueError:
			print('invalid input')


def main():
	input_folder = '../data/OUTPUT/'
	output_folder = '../data/OUTPUT/collage/'
	if not os.path.exists(output_folder):
		os.mkdir(output_folder)
	sim = runMe.check_int(input_folder)
	input_folder = input_folder + sim + '/'
	output_folder = output_folder + sim + '/'
	if not os.path.exists(output_folder):
		os.mkdir(output_folder)
	list_image = []
	list_run = os.listdir(input_folder)
	count = len(list_run)
	cols = int(math.sqrt(count))
	rows = int(math.sqrt(count))
	print(cols, rows, count)
	map = list_run[0]
	map_name = '/' + os.listdir(input_folder + map)[0]
	list_run.sort()
	if skip_choice is True:
		for i in range(0, 8):
			type = types[i]
			name = names[i]
			for run in list_run:
				image = Image.open(input_folder + run + map_name + type)
				list_image.append(image)
			create_collage(cols, rows, list_image, output_folder, name)
	else:
		type, name = ask_collage_image()
		for run in list_run:
			image = Image.open(input_folder + run + map_name + type)
			list_image.append(image)
		create_collage(cols, rows, list_image, output_folder, name)


if __name__ == '__main__':
	main()
