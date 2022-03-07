import os
import random

import cv2
import matplotlib
import matplotlib.cm as cmx
import matplotlib.colors as colors
import matplotlib.patches as patches
import matplotlib.path as mplPath
import numpy as np
from descartes import PolygonPatch
from matplotlib import pyplot as plt
from random import randint
from PIL import Image

default_format = ".pdf"
normal_format = ".png"

def setup_plot(size):
	plt.clf()
	plt.cla()
	plt.close('all')
	width = size[0]/100
	height = size[1]/100
	fig, ax = plt.subplots()
	fig.set_size_inches(width, height)
	ax = plt.Axes(fig, [0., 0., 1., 1.])
	ax.axis('off')
	fig.add_axes(ax)
	return fig, ax


def draw_image(image, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	ax.imshow(image)
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_canny(image, name, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot()
	title = os.path.join(filepath, name)
	ax.imshow(image, cmap='Greys')
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_hough(image, walls, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = image.copy()
	if len(img.shape) == 2:
		img = cv2.cvtColor(img, cv2.COLOR_GRAY2RGB)
	for x1, y1, x2, y2 in walls:
		cv2.line(img, (x1, y1), (x2, y2), (randint(0, 255), randint(0, 255), randint(0, 255)), 3)
	ax.imshow(img, cmap='Greys')
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_walls(walls, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	x_coordinates = []
	y_coordinates = []
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	for wall in walls:
		x1 = wall.x1
		x2 = wall.x2
		y1 = wall.y1
		y2 = wall.y2
		x_coordinates.extend((x1, x2))
		y_coordinates.extend((y1, y2))
		ax.plot(x_coordinates, y_coordinates, color=np.random.rand(3,), linewidth=1)
		del x_coordinates[:]
		del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_contour(vertices, name, size, format=default_format, filepath='.'):
	# draw the external contour of the metric map
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	bbPath = mplPath.Path(vertices)
	patch = patches.PathPatch(bbPath, facecolor='orange', lw=2)
	ax.add_patch(patch)
	# ax.set_xlim(x_min - 1, x_max + 1)
	# ax.set_ylim(y_min - 1, y_max + 1)
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_angular_clusters(angular_clusters, walls, name, size, format=default_format, filepath='.'):
	print(name)
	x_coordinates = []
	y_coordinates = []
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	num_of_colors = len(set(angular_clusters))
	cm = plt.get_cmap("nipy_spectral")
	cNorm = colors.Normalize(vmin=0, vmax=num_of_colors)
	scalar_map = cmx.ScalarMappable(norm=cNorm, cmap=cm)
	for index, c in enumerate(np.random.permutation(list(set(angular_clusters)))):
		for wall in walls:
			if wall.angular_cluster == c:
				x_coordinates.extend((wall.x1, wall.x2))
				y_coordinates.extend((wall.y1, wall.y2))
				ax.plot(x_coordinates, y_coordinates, color=colors.rgb2hex(scalar_map.to_rgba(index)), linewidth=1)
			del x_coordinates[:]
			del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_representative_segments(representatives_segments, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	x_coordinates = []
	y_coordinates = []
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	for wall in representatives_segments:
		x1 = wall.x1
		x2 = wall.x2
		y1 = wall.y1
		y2 = wall.y2
		x_coordinates.extend((x1, x2))
		y_coordinates.extend((y1, y2))
		ax.plot(x_coordinates, y_coordinates, color='k', linewidth=1)
		del x_coordinates[:]
		del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_spatial_wall_clusters(wall_clusters, walls, name, size, format=default_format, filepath='.'):
	print(name)
	x_coordinates = []
	y_coordinates = []
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	num_of_colors = len(set(wall_clusters))
	cm = plt.get_cmap("nipy_spectral")
	cNorm = colors.Normalize(vmin=0, vmax=num_of_colors)
	scalar_map = cmx.ScalarMappable(norm=cNorm, cmap=cm)
	for index, c in enumerate(np.random.permutation(list(set(wall_clusters)))):
		for wall in walls:
			if wall.wall_cluster == c:
				x_coordinates.extend((wall.x1, wall.x2))
				y_coordinates.extend((wall.y1, wall.y2))
				ax.plot(x_coordinates, y_coordinates, color=colors.rgb2hex(scalar_map.to_rgba(index)), linewidth=1)
			del x_coordinates[:]
			del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_spatial_clusters(spatial_clusters, walls, name, size, format=default_format, filepath='.'):
	print(name)
	x_coordinates = []
	y_coordinates = []
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	num_of_colors = len(set(spatial_clusters))
	cm = plt.get_cmap("nipy_spectral")
	cNorm = colors.Normalize(vmin=0, vmax=num_of_colors)
	scalar_map = cmx.ScalarMappable(norm=cNorm, cmap=cm)
	for index, c in enumerate(np.random.permutation(list(set(spatial_clusters)))):
		for wall in walls:
			if wall.spatial_cluster == c:
				x_coordinates.extend((wall.x1, wall.x2))
				y_coordinates.extend((wall.y1, wall.y2))
				ax.plot(x_coordinates, y_coordinates, color=colors.rgb2hex(scalar_map.to_rgba(index)),
						linewidth=1)
			del x_coordinates[:]
			del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_extended_lines(extended_segments, walls, name, size, format=default_format, filepath='.'):
	print(name)
	x_coordinates = []
	y_coordinates = []
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	for wall in walls:
		x_coordinates.append(wall.x1)
		x_coordinates.append(wall.x2)
		y_coordinates.append(wall.y1)
		y_coordinates.append(wall.y2)
		ax.plot(x_coordinates, y_coordinates, color='k', linewidth=1.5)
		del x_coordinates[:]
		del y_coordinates[:]
	for segment in extended_segments:
		x_coordinates.append(segment.x1)
		x_coordinates.append(segment.x2)
		y_coordinates.append(segment.y1)
		y_coordinates.append(segment.y2)
		ax.plot(x_coordinates, y_coordinates, color='r', linewidth=1)
		del x_coordinates[:]
		del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_dbscan(labels, faces, polygon_faces, edges, contours, name, size, format=default_format, filepath='.'):
	# draw faces based on cluster obtained by dbscan. faces of same cluster have same color.
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	assigned_color = []
	cmap = matplotlib.cm.get_cmap('Paired')
	for label in set(labels):
		rgba = cmap(random.random())
		# convert in hexadecimal
		col = matplotlib.colors.rgb2hex(rgba)
		assigned_color.append(col)
		for index, l in enumerate(labels):
			if l == label:
				f = faces[index]
				f_poly = polygon_faces[index]
				f_patch = PolygonPatch(f_poly, fc=col, ec='BLACK')
				ax.add_patch(f_patch)
				# ax.set_xlim(x_min, x_max)
				# ax.set_ylim(y_min, y_max)
				sum_x = 0
				sum_y = 0
				for b in f.borders:
					sum_x += b.x1 + b.x2
					sum_y += b.y1 + b.y2
				x_text = sum_x/(2*len(f.borders))
				y_text = sum_y/(2*len(f.borders))
				ax.text(x_text, y_text, str(l), fontsize=8)
	x_coordinates = []
	y_coordinates = []
	for edge in edges:
		if edge.weight >= 0.1:
			x_coordinates.append(edge.x1)
			x_coordinates.append(edge.x2)
			y_coordinates.append(edge.y1)
			y_coordinates.append(edge.y2)
			ax.plot(x_coordinates,y_coordinates, color='k', linewidth=4.0)
			del x_coordinates[:]
			del y_coordinates[:]
	x_coordinates = []
	y_coordinates = []
	for c1 in contours:
		x_coordinates.append(c1[0][0])
		y_coordinates.append(c1[0][1])
	ax.plot(x_coordinates, y_coordinates, color='0.8', linewidth=3.0)
	del x_coordinates[:]
	del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)
	return assigned_color, fig, ax


def draw_edges(edges, walls, threshold, name, size, format=default_format, filepath='.'):
	print(name)
	x_coordinates = []
	y_coordinates = []
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	for wall in walls:
		x_coordinates.append(wall.x1)
		x_coordinates.append(wall.x2)
		y_coordinates.append(wall.y1)
		y_coordinates.append(wall.y2)
		ax.plot(x_coordinates, y_coordinates, color='k', linewidth=1.5)
		del x_coordinates[:]
		del y_coordinates[:]
	for segment in edges:
		color = (randint(0, 255)/255, randint(0, 255)/255, randint(0, 255)/255)
		if segment.weight > threshold:
			x_coordinates.append(segment.x1)
			x_coordinates.append(segment.x2)
			y_coordinates.append(segment.y1)
			y_coordinates.append(segment.y2)
			ax.plot(x_coordinates, y_coordinates, color=color, linewidth=3)
			del x_coordinates[:]
			del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_cells(polygon_cells, polygons_out, partial_polygons, name, size, format=default_format, filepath='.',):
	# draw the cells with different color based on classification of cells
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	for index, s in enumerate(polygon_cells):
		f_patch = PolygonPatch(s, fc='orange', ec='BLACK')
		ax.add_patch(f_patch)
		# ax.set_xlim(x_min, x_max)
		# ax.set_ylim(y_min, y_max)
	for index, s in enumerate(partial_polygons):
		f_patch = PolygonPatch(s, fc='green', ec='BLACK')
		ax.add_patch(f_patch)
		# ax.set_xlim(x_min, x_max)
		# ax.set_ylim(y_min, y_max)
	for index, s in enumerate(polygons_out):
		f_patch = PolygonPatch(s, fc='#FFFFFF', ec='BLACK')
		ax.add_patch(f_patch)
		# ax.set_xlim(x_min, x_max)
		# ax.set_ylim(y_min, y_max)
	plt.savefig(title + format)
	plt.savefig(title + normal_format)
	return fig, ax


def draw_rooms(rooms, colors, name, size, format=default_format, filepath='.'):
	new_colors = []
	for i, color in enumerate(colors):
		# random_number = random.randint(0, 16777215)
		# hex_number = str(hex(random_number))
		# hex_number = '#' + hex_number[2:]
		new_color = np.random.rand(3,)
		# new_color = (random.random(), random.random(), random.random())
		new_colors.append(new_color)
	# draw the rooms layout
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	for index, s in enumerate(rooms):
		f_patch = PolygonPatch(s, fc=new_colors[index], ec='none')
		ax.add_patch(f_patch)
		# ax.set_xlim(x_min, x_max)
		# ax.set_ylim(y_min, y_max)
	plt.savefig(title + format)
	plt.savefig(title + normal_format)
	return fig, ax


def draw_rooms_on_map(image, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	im = image.copy()
	image = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)
	th, image = cv2.threshold(image, 230, 255, cv2.THRESH_BINARY)
	cv2.imwrite(filepath + '0_Map_tmp.png', image, [cv2.IMWRITE_PNG_COMPRESSION])
	final_image = Image.open(filepath + '0_Map_tmp.png').convert('RGBA')
	room_image = Image.open(filepath + '8b_rooms_th1.png')
	pix_data_final = final_image.load()
	pix_data_room = room_image.load()
	for y in range(final_image.size[1]):
		for x in range(final_image.size[0]):
			if pix_data_final[x, y] == (255, 255, 255, 255):
				pix_data_final[x, y] = pix_data_room[x, y]
	final_image.save(title + normal_format)
	pdf_image = final_image.convert('RGB')
	pdf_image.save(title + format)
	return title + normal_format


def draw_rooms_on_map_plus_lines(image, extended_segments, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	im = image.copy()
	image = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)
	th, image2 = cv2.threshold(image, 230, 255, cv2.THRESH_BINARY)
	image = cv2.cvtColor(image2, cv2.COLOR_GRAY2RGB)
	for segment in extended_segments:
		x1 = segment.x1
		x2 = segment.x2
		y1 = segment.y1
		y2 = segment.y2
		cv2.line(image, (int(x1), int(y1)), (int(x2), int(y2)), (0, 0, 255), 3)
	cv2.imwrite(filepath + '0_Map_tmp_lines.png', image, [cv2.IMWRITE_PNG_COMPRESSION])
	final_image = Image.open(filepath + '0_Map_tmp_lines.png').convert('RGBA')
	room_image = Image.open(filepath + '8b_rooms_th1.png')
	pix_data_final = final_image.load()
	pix_data_room = room_image.load()
	for y in range(final_image.size[1]):
		for x in range(final_image.size[0]):
			if pix_data_final[x, y] == (255, 255, 255, 255):
				pix_data_final[x, y] = pix_data_room[x, y]
	final_image.save(title + normal_format)
	pdf_image = final_image.convert('RGB')
	pdf_image.save(title + format)


def draw_rooms_on_map_prediction(image, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	im = image.copy()
	im2 = image.copy()
	im = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)
	th, image = cv2.threshold(im, 230, 255, cv2.THRESH_BINARY)
	th, image2 = cv2.threshold(im2, 150, 255, cv2.THRESH_BINARY)
	cv2.imwrite(filepath + '0_Map_tmp.png', image, [cv2.IMWRITE_PNG_COMPRESSION])
	cv2.imwrite(filepath + '0_Map_tmp2.png', image2, [cv2.IMWRITE_PNG_COMPRESSION])
	threshold_image = Image.open(filepath + '0_Map_tmp.png').convert('RGBA')
	th_image2 = Image.open(filepath + '0_Map_tmp2.png').convert('RGBA')
	room_image = Image.open(filepath + '8b_rooms_th1.png').resize(size)
	final_image = Image.open(filepath + '0_Map_tmp.png').resize(size).convert('RGBA')
	pix_data_threshold = threshold_image.load()
	pix_data_room = room_image.load()
	pix_data_final = final_image.load()
	pix_data_threshold2 = th_image2.load()
	for y in range(threshold_image.size[1]):
		for x in range(threshold_image.size[0]):
			if pix_data_threshold[x, y] == (255, 255, 255, 255):
				pix_data_final[x, y] = pix_data_room[x, y]
			else:
				if pix_data_room[x, y] != (255, 255, 255, 255) and pix_data_threshold2[x, y] == (255, 255, 255, 255):
					pixel = pix_data_room[x, y]
					pix_data_final[x, y] = (pixel[0], pixel[1], pixel[2], 125)
					# pix_data_final[x, y] = pix_data_room[x, y]
	final_image.save(title + normal_format)
	pdf_image = final_image.convert('RGB')
	pdf_image.save(title + format)


def draw_sides(edges, name, size, format=default_format, filepath='.'):
	print(name)
	fig, ax = setup_plot(size)
	x_coordinates = []
	y_coordinates = []
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	for edge in edges:
		if edge.weight >= 0.3:
			x_coordinates.append(edge.x1)
			x_coordinates.append(edge.x2)
			y_coordinates.append(edge.y1)
			y_coordinates.append(edge.y2)
			ax.plot(x_coordinates, y_coordinates, color='k', linewidth=4.0)
			del x_coordinates[:]
			del y_coordinates[:]
	plt.savefig(title + format)
	plt.savefig(title + normal_format)


def draw_wall_segments_rooms(rooms, colori, spatial_clusters, wall_list, name, size, format=default_format, filepath='.'):
	# draw walls, weighted segments and rooms
	fig, ax = setup_plot(size)
	title = os.path.join(filepath, name)
	img = np.zeros((size[1], size[0], 3), np.uint8)
	img[:, :] = (255, 255, 255)
	ax.imshow(img)
	x_coordinates = []
	y_coordinates = []
	num_of_colors = len(set(spatial_clusters))
	cm = plt.get_cmap("nipy_spectral")
	c_norm = colors.Normalize(vmin=0, vmax=num_of_colors)
	scalar_map = cmx.ScalarMappable(norm=c_norm, cmap=cm)
	for index, c in enumerate(np.random.permutation(list(set(spatial_clusters)))):
		for wall in wall_list:
			if wall.spatial_cluster == c:
				x_coordinates.extend((wall.x1, wall.x2))
				y_coordinates.extend((wall.y1, wall.y2))
				ax.plot(x_coordinates, y_coordinates, color=colors.rgb2hex(scalar_map.to_rgba(index)), linewidth=2.0)
				del x_coordinates[:]
				del y_coordinates[:]
	# rooms
	for index, s in enumerate(rooms):
		f_patch = PolygonPatch(s, fc=colori[index], ec='BLACK')
		ax.add_patch(f_patch)
		# ax.set_xlim(x_min, x_max)
		# ax.set_ylim(y_min, y_max)
	plt.savefig(title + format)
	plt.savefig(title + normal_format)
