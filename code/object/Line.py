# a Line is an object where a wall lay. When different Lines meet, they form Surfaces.

from __future__ import division
import numpy as np
import math


class Line(object):
	def __init__(self, point, angular_cluster, spatial_cluster):
		self.point = point
		self.angular_cluster = angular_cluster
		self.spatial_cluster = spatial_cluster


def create_extended_lines(spatial_clusters, wall_list, x_min, y_min):
	# crea una extended_line per ogni cluster spaziale. La retta avra' cluster spaziale e angolare = a cluster spaziale
	# e angolare dei muri che la generano, e come punto avra' (mediana delle x dei punti medi, ymin) se e' verticale,
	# (xmin, mediana delle y dei punti medi) se e' orizzontale, mediana dei punti medi se e' obliqua.
	extended_lines = []
	for cluster in set(spatial_clusters):
		mid_points = []
		angle = None
		for wall in wall_list:
			if wall.spatial_cluster == cluster:
				if angle is None:
					angle = wall.angular_cluster
					# set only 1 time. all the walls with same spatial_cluster have same angular_cluster
				mid_x = (wall.x1+wall.x2)/2
				mid_y = (wall.y1+wall.y2)/2
				mid_point = np.array([mid_x,mid_y])
				mid_points.append(mid_point)
		# check if angular_cluster is horizontal, vertical or oblique
		# horizontal
		if angle == 0:
			# ordered by y
			mid_points.sort(key=lambda x: (x[1], x[0]))
			index = len(mid_points)//2
			point = np.array([x_min, mid_points[index][1]])
		# vertical
		elif angle == math.radians(90):
			# ordered by x
			mid_points.sort(key=lambda x: (x[0], x[1]))
			index = len(mid_points)//2
			point = np.array([mid_points[index][0], y_min])
		# oblique
		else:
			# ordered by x
			mid_points.sort(key=lambda x: (x[0], x[1]))
			index = len(mid_points)//2
			point = mid_points[index]
		extended_lines.append(Line(point, angle, cluster))
	return extended_lines
