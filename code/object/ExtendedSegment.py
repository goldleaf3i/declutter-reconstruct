# this class is the same as Line except for the fact that the segment has a start and an end
# due to the Border box of image (offset)

from __future__ import division
import numpy as np
import math


class ExtendedSegment(object):
	def __init__(self, point1, point2, angular_cluster, spatial_cluster):
		self.x1 = point1[0]
		self.y1 = point1[1]
		self.x2 = point2[0]
		self.y2 = point2[1]
		self.angular_cluster = angular_cluster
		self.spatial_cluster = spatial_cluster
		self.weight = None
		self.rooms_coverage = None

	def set_weight(self, weight):
		self.weight = weight

	# number of rooms that touch
	def set_coverage(self, number_of_rooms):
		self.rooms_coverage = number_of_rooms


def create_extended_segments(x_min, x_max, y_min, y_max, extended_lines):
	# create an extended_segment for each extended_line, as intersection between extended_line and bounding box
	extended_seg = []
	for line in extended_lines:
		# horizontal
		if line.angular_cluster == 0:
			point2 = np.array([x_max, line.point[1]])
			seg = ExtendedSegment(line.point, point2, line.angular_cluster, line.spatial_cluster)
			extended_seg.append(seg)
		# vertical
		elif line.angular_cluster == math.radians(90):
			point2 = np.array([line.point[0], y_max])
			seg = ExtendedSegment(line.point, point2, line.angular_cluster, line.spatial_cluster)
			extended_seg.append(seg)
		# oblique
		else:
			m = math.tan(line.angular_cluster)
			q = line.point[1] - (m*line.point[0])
			y_for_x_min = m * x_min + q
			y_for_x_max = m * x_max + q
			x_for_y_min = (y_min - q) / m
			x_for_y_max = (y_max - q) / m
			if line.angular_cluster < 0 or line.angular_cluster * 180/math.pi > 90:
				if y_max < y_for_x_min:
					point1 = np.array([x_for_y_max, y_max])
				else:
					point1 = np.array([x_min, y_for_x_min])
				if y_min > y_for_x_max:
					point2 = np.array([x_for_y_min, y_min])
				else:
					point2 = np.array([x_max, y_for_x_max])
			else:
				if y_for_x_min > y_min:
					point1 = np.array([x_min, y_for_x_min])
				else:
					point1 = np.array([x_for_y_min, y_min])
				if y_for_x_max < y_max:
					point2 = np.array([x_max, y_for_x_max])
				else:
					point2 = np.array([x_for_y_max, y_max])
			seg = ExtendedSegment(point1, point2, line.angular_cluster, line.spatial_cluster)
			extended_seg.append(seg)
	point1 = np.array([x_min, y_min])
	point2 = np.array([x_min, y_max])
	point3 = np.array([x_max, y_max])
	point4 = np.array([x_max, y_min])
	seg1 = ExtendedSegment(point1, point2, None, 'bordo1')
	seg2 = ExtendedSegment(point2, point3, None, 'bordo2')
	seg3 = ExtendedSegment(point4, point3, None, 'bordo3')
	seg4 = ExtendedSegment(point1, point4, None, 'bordo4')
	extended_seg.extend((seg1, seg2, seg3, seg4))
	return extended_seg


# this function create the set of extended segment starting from a set of edges.
def create_extended_from_edges(edges, x_min, y_min, x_max, y_max):
	extended_lines = []
	for edge in edges:
		# horizontal edge
		if edge.angular_cluster == 0:
			point1 = np.array([x_min, edge.y1])
			point2 = np.array([x_max, edge.y1])
		# vertical edge
		elif edge.angular_cluster == math.radians(90):
			point1 = np.array([edge.x1, y_min])
			point2 = np.array([edge.x1, y_max])
		# oblique edge
		else:
			m = math.tan(edge.angular_cluster)
			q = edge.y1 - (m * edge.x1)
			y_for_x_min = m * x_min + q
			y_for_x_max = m * x_max + q
			x_for_y_min = (y_min - q) / m
			x_for_y_max = (y_max - q) / m
			if edge.angular_cluster < 0 or edge.angular_cluster * 180 / math.pi > 90:
				if y_max < y_for_x_min:
					point1 = np.array([x_for_y_max, y_max])
				else:
					point1 = np.array([x_min, y_for_x_min])
				if y_min > y_for_x_max:
					point2 = np.array([x_for_y_min, y_min])
				else:
					point2 = np.array([x_max, y_for_x_max])
			else:
				if y_for_x_min > y_min:
					point1 = np.array([x_min, y_for_x_min])
				else:
					point1 = np.array([x_for_y_min, y_min])
				if y_for_x_max < y_max:
					point2 = np.array([x_max, y_for_x_max])
				else:
					point2 = np.array([x_for_y_max, y_max])
		# TODO CHECK IF AN EXTENDED SEGMENT IS ALREADY PRESENT IN THIS LIST
		line = ExtendedSegment(point1, point2, edge.angular_cluster, edge.spatial_cluster)
		extended_lines.append(line)
	return extended_lines


# this function is used to sort the list by weight
def sort_weight(val):
	return val.weight


# this function is used to divide the extended segments by m
def divide_segments(extended_segments):
	clusters = []
	ang = []
	for seg in extended_segments:
		angular_cluster = seg.angular_cluster
		if angular_cluster not in ang:
			ang.append(angular_cluster)
	for a in ang:
		tmp = []
		for s in extended_segments:
			if s.angular_cluster == a:
				tmp.append(s)
		clusters.append(tmp)
	return clusters


def point_point_distance(seg1, seg2):
	m = seg1.angular_cluster
	m_perp = -1 / m
	q1 = (-m * seg1.x1 + seg1.y1)
	q_p = (-m_perp * seg2.x1 + seg2.y1)
	x = (q1 - q_p) / (m_perp - m)
	y = (m_perp * x) + q_p
	distance = math.sqrt((seg2.x1 - x)*(seg2.x1 - x) + (seg2.x1 - y)*(seg2.x1 - y))
	return distance


def point_line_distance(segment1, x1, y1):
	if segment1.x2 - segment1.x1 == 0:
		distance = math.fabs(segment1.x1 - x1)
	else:
		m = (segment1.y2 - segment1.y1)/(segment1.x2 - segment1.x1)
		q = -m*segment1.x1 + segment1.y1
		distance = math.fabs(y1 - m*x1 - q)/math.sqrt(1 + m*m)
	return distance


# this function is used to get the cluster of extended segments very close each others.
def get_clusters(extended_segments, distance):
	merged_segments = []
	# create a structure like this: [[1,2,3][5,6][7,8]] where each element is a cluster of near extended segments
	for i1, segment1 in enumerate(extended_segments):
		for i2 in range(i1+1, len(extended_segments)):
			segment2 = extended_segments[i2]
			# if are parallel. and not offset extended segments.
			if segment1.angular_cluster == segment2.angular_cluster:
				real_distance = point_line_distance(segment1, segment2.x1, segment2.y1)
				if real_distance < distance:
					# print real_distance, ' ', i1, ' ', i2
					if len(merged_segments) == 0:
						merged_segments.append([segment1, segment2])
						# merged_segments.append([i1, i2])
					else:
						index_1 = -1
						index_2 = -1
						for i, elem in enumerate(merged_segments):
							if segment1 in elem:
								index_1 = i
								# if segment2 not in elem:
									# elem.append(segment2)
									# elem.append(i2)
								# index = 1
							if segment2 in elem:
								index_2 = i
							# elif segment2 in elem:
								# if segment1 not in elem:
									# elem.append(segment1)
									# elem.append(i1)
								# index = 1
						if index_1 == index_2 == -1:
							merged_segments.append([segment1, segment2])
						if index_1 == -1 and index_2 != -1:
							merged_segments[index_2].append(segment1)
						if index_1 != -1 and index_2 == -1:
							merged_segments[index_1].append(segment2)
						if index_1 != index_2 and index_1 != -1 and index_2 != -1:
							cluster1 = merged_segments[index_1]
							cluster2 = merged_segments[index_2]
							cluster3 = cluster1 + cluster2
							merged_segments.remove(cluster1)
							merged_segments.remove(cluster2)
							merged_segments.append(cluster3)
						# if index == 0:
							# merged_segments.append([segment1, segment2])
							# merged_segments.append([i1, i2])
	return merged_segments


def reallocate_walls(seg1, seg2, walls):
	for wall in walls:
		if wall.spatial_cluster == seg2.spatial_cluster:
			wall.set_spatial_cluster(seg1.spatial_cluster)


# this function is used to remove the extended segments very close each other by removing the less significant
def merge_together(extended_segments, distance, walls):
	extended_segments_v2 = []
	for seg in extended_segments:
		if seg.angular_cluster is not None:
			extended_segments_v2.append(seg)
	segments = divide_segments(extended_segments_v2)
	# merge all clusters into this structure: [[1,2,3],[4,5],[6,7,8],[9,10]] by angular cluster.
	# note that one segment con appear in only one cluster.
	merged_segments = []
	for el in segments:
		cl = get_clusters(el, distance)
		merged_segments = merged_segments + cl
	seg_to_remove = []
	for cluster in merged_segments:
		# sort each cluster by segment weight. from most significant to less significant.
		cluster.sort(key=sort_weight, reverse=True)
		for j1, seg1 in enumerate(cluster):
			for j2 in range(j1+1, len(cluster)):
				seg2 = cluster[j2]
				if not (seg1 is None or seg2 is None):
					dist = point_line_distance(seg1, seg2.x1, seg2.y1)
					if dist < distance:
						reallocate_walls(seg1, seg2, walls)
						seg_to_remove.append(seg2)
						cluster[j2] = None
	for seg in seg_to_remove:
		try:
			extended_segments_v2.remove(seg)
		except:
			print('segment already removed')
	for seg in extended_segments:
		try:
			if seg.angular_cluster is None:
				extended_segments_v2.append(seg)
		except:
			print('segment already removed')
	return extended_segments_v2
