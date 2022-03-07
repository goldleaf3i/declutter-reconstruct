from __future__ import division
import numpy as np
import math

from object.ExtendedSegment import ExtendedSegment


class Segment(object):
	def __init__(self, x1, y1, x2, y2):
		self.x1 = x1
		self.y1 = y1
		self.x2 = x2
		self.y2 = y2
		self.num_faces = 0
		self.spatial_cluster = None
		self.wall_cluster = None
		self.angular_cluster = None
		self.cluster_index = None
		self.weight = None
		self.direction = None
		self.branch = None

	def set_cluster_index(self, i):
		self.cluster_index = i

	def set_weight(self, w):
		self.weight = w

	def set_direction(self,d):
		self.direction = d

	def set_angular_cluster(self, c):
		self.angular_cluster = c

	def set_spatial_cluster(self, c):
		self.spatial_cluster = c

	def set_branch(self, b):
		self.branch = b

	def set_wall_cluster(self, cluster):
		self.wall_cluster = cluster


def length(x1, y1, x2, y2):
	# return the distance between point 1 and point 2
	dist = np.sqrt((x2 - x1)**2 + (y2 - y1)**2)
	return dist


def point_segment_distance(px, py, x1, y1, x2, y2):
	# compute distance between points px,py and segment find by extremes x1,y1 and x2,y2
	dx = x2 - x1
	dy = y2 - y1
	if dx == dy == 0:  # the segment's just a point
		return math.hypot(px - x1, py - y1)
	# Calculate the t that minimizes the distance.
	t = ((px - x1) * dx + (py - y1) * dy) / (dx * dx + dy * dy)
	# See if this represents one of the segment's
	# end points or a point in the middle.
	if t < 0:
		dx = px - x1
		dy = py - y1
	elif t > 1:
		dx = px - x2
		dy = py - y2
	else:
		near_x = x1 + t * dx
		near_y = y1 + t * dy
		dx = px - near_x
		dy = py - near_y
	return math.hypot(dx, dy)


def intersection_lines(m1, q1, m2, q2):
	# given 2 lines in form: (m1x+y=q1) e (m2x+y=q2) find point of intersection.
	coefficient = np.array([[m1, 1], [m2, 1]])
	known_term = np.array([q1, q2])
	x = np.linalg.solve(coefficient, known_term)
	return x


def segments_intersect(x11, y11, x12, y12, x21, y21, x22, y22):
	# restituisce true se i segmenti si intersecano, false altrimenti
	# whether two segments in the plane intersect:
	# one segment is (x11, y11) to (x12, y12)
	# the other is   (x21, y21) to (x22, y22)
	dx1 = x12 - x11
	dy1 = y12 - y11
	dx2 = x22 - x21
	dy2 = y22 - y21
	delta = dx2 * dy1 - dy2 * dx1
	# parallel segments
	if delta == 0:
		return False
	s = (dx1 * (y21 - y11) + dy1 * (x11 - x21)) / delta
	t = (dx2 * (y11 - y21) + dy2 * (x21 - x11)) / (-delta)
	return (0 <= s <= 1) and (0 <= t <= 1)


def segments_distance(x11, y11, x12, y12, x21, y21, x22, y22):
	# compute distance between 2 segment, if they intersect return 0, otherwise compute it and return it.
	# distance between two segments in the plane:
	# one segment is (x11, y11) to (x12, y12)
	# the other is   (x21, y21) to (x22, y22)
	if segments_intersect(x11, y11, x12, y12, x21, y21, x22, y22):
		return 0
	# try each of the 4 vertices w/the other segment
	# in pratica la distanza tra 2 segmenti e' il minimo tra la distanza tra 1 estremo e 2 segmento, 2 estremo e 2 segmento,
	# 3 estremo e 1 segmento, 4 estremo e 1 segmento
	distances = []
	distances.append(point_segment_distance(x11, y11, x21, y21, x22, y22))
	distances.append(point_segment_distance(x12, y12, x21, y21, x22, y22))
	distances.append(point_segment_distance(x21, y21, x11, y11, x12, y12))
	distances.append(point_segment_distance(x22, y22, x11, y11, x12, y12))
	return min(distances)


def radiant_inclination(x1, y1, x2, y2):
	# compute radiant inclination of segment with extremes x1,y1 and x2,y2
	# avoid division by 0
	if x1 != x2:
		m = (y2-y1)/(x2-x1)
		angle = math.atan(m)
	else:
		angle = math.radians(90.0)
	return angle


def assign_angular_cluster(wall_list, cluster_centers):
	# assign each angular_cluster to every wall in wall_list
	for index, wall in enumerate(wall_list):
		cluster = cluster_centers[index]
		wall.set_angular_cluster(cluster)
	return wall_list


def spatial_clustering(threshold, wall_list):

	# assegna cluster spaziale ad ogni muro di lista_muri. 2 muri hanno stesso cluster spaziale se hanno stesso cluster
	# angolare e se hanno distanza laterale minore di soglia. Cluster spaziale = indice di posizione del primo muro in
	# lista_muri che appartiene a quel cluster spaziale. E questo primo muro avra' quindi come cluster spaziale il
	# proprio indice di posizione.

	for index, wall1 in enumerate(wall_list):
		if wall1.spatial_cluster is None:
			# check only next ones because the previous ones are already set
			for wall2 in wall_list[index + 1:]:
				# if not set yet and if they have same angular_cluster
				if(wall2.spatial_cluster is None) and (wall1.angular_cluster == wall2.angular_cluster):
					if lateral_separation(wall1, wall2) < threshold:
						wall2.set_spatial_cluster(index)
			# after the scan, set the spatial cluster of first one
			# NB: it will be set also if no other wall is been found. it will be a cluster with only one wall.
			wall1.set_spatial_cluster(index)
		else: 
			# gia' stato settato, ma devo controllare lo stesso i successivi perche' possono essercene alcuni che dovrebbero
			# appartenere allo stesso cluster_spaziali ma avevano distanza laterale troppo grande.
			for wall2 in wall_list:
				# if not already set and if they have same angular_cluster
				if(wall2.spatial_cluster is None) and (wall1.angular_cluster == wall2.angular_cluster):
					if lateral_separation(wall1,wall2) < threshold:
						wall2.set_spatial_cluster(wall1.spatial_cluster)
						# this time don't set cluster=index because wall1 isn't the first of cluster
				else:
					if(wall2.spatial_cluster is not None) and (wall2.spatial_cluster != wall1.spatial_cluster) and (wall1.angular_cluster == wall2.angular_cluster) and(lateral_separation(wall1, wall2) < threshold):
						for m in wall_list:
							if m.spatial_cluster == wall2.spatial_cluster:
								m.set_spatial_cluster(wall1.spatial_cluster)
	return wall_list


def lateral_separation(wall1, wall2):
	# compute lateral separation between wall1 and wall2
	x1 = wall1.x1
	y1 = wall1.y1
	x2 = wall1.x2
	y2 = wall1.y2
	x3 = wall2.x1
	y3 = wall2.y1
	x4 = wall2.x2
	y4 = wall2.y2
	mid1_x = (x1+x2)/2
	mid1_y = (y1+y2)/2
	mid2_x = (x3+x4)/2
	mid2_y = (y3+y4)/2
	# equal to wall2.angular_cluster
	d = wall1.angular_cluster
	m = math.tan(d)
	# if angular_cluster != 0, so non horizontal line
	if m != 0:
		m_perp = -1/m
		q1 = mid1_y - (m_perp * mid1_x)
		q2 = mid2_y - (m * mid2_x)
		# devo calcolare la distanza tra le proiezioni di mid1 e mid2 sulla retta perp al loro cluster angolare.
		# Questa retta la faccio passare per mid1 cosi' devo proiettare solo mid2. Lo proietto trovando l'intersezione
		# tra la retta perp passante per mid1 e la
		# line with angular coefficient = tan(direction) passing through mid2.
		mid2_projected = intersection_lines(-m_perp, q1, -m, q2)
		mid2_projected_x = mid2_projected[0]
		mid2_projected_y = mid2_projected[1]
		return length(mid1_x, mid1_y, mid2_projected_x, mid2_projected_y)
	# horizontal line
	else:
		# mid2 will have x = mid2_x and y = mid1_y
		return length(mid1_x, mid1_y, mid1_x, mid2_y)


def get_projected_points(wall1, wall2):
	# dati due muri, ottengo la retta perpendicolare passante per il centro del primo muro.
	# ottengo poi la retta passante per il centro del secondo muro avente come coefficiente angolare lo stesso del primo
	# muro. ottenute le due rette ottengo il punto di intersezione e restituisco le coordinate del punto medio del
	# secondo muro proiettato sulla retta ortogonale al primo muro.
	# cioe' la proiezione del punto medio del secondo muro sulla retta ortogonale e passante per il centro del primo muro.
	x1 = wall1.x1
	y1 = wall1.y1
	x2 = wall1.x2
	y2 = wall1.y2
	x3 = wall2.x1
	y3 = wall2.y1
	x4 = wall2.x2
	y4 = wall2.y2
	mid1_x = (x1+x2)/2
	mid1_y = (y1+y2)/2
	mid2_x = (x3+x4)/2
	mid2_y = (y3+y4)/2
	# equal to wall2.angular_cluster
	d = wall1.angular_cluster
	m = math.tan(d)
	# if angular_cluster !=0, so non horizontal line
	if m != 0:
		m_perp = -1/m
		q1 = mid1_y - (m_perp * mid1_x)
		q2 = mid2_y - (m * mid2_x)
		# devo calcolare la distanza tra le proiezioni di mid1 e mid2 sulla retta perp al loro cluster angolare.
		# Questa retta la faccio passare per mid1 cosi' devo proiettare solo mid2. Lo proietto trovando l'intersezione
		# tra la retta perp passante per mid1 e la retta con inclinazione = tan(direction) passante per mid2.
		mid2_projected = intersection_lines(-m_perp, q1, -m, q2)
		mid2_projected_x = mid2_projected[0]
		mid2_projected_y = mid2_projected[1]
		return mid2_projected_x, mid2_projected_y
	# horizontal line
	else:
		# mid2 projected will have x = mid2_x e y = mid1_y
		return mid2_x, mid1_y


def find_extremes(walls_list):
	# find xmin,ymin,xmax,ymax of walls of walls_list. They form the bounding box.
	x_coordinates = []
	y_coordinates = []
	for wall in walls_list:
		x_coordinates.append(float(wall.x1))
		x_coordinates.append(float(wall.x2))
		y_coordinates.append(float(wall.y1))
		y_coordinates.append(float(wall.y2))
	xmin = min(x_coordinates)
	xmax = max(x_coordinates)
	ymin = min(y_coordinates)
	ymax = max(y_coordinates)
	del x_coordinates[:]
	del y_coordinates[:]
	return np.array([xmin, xmax, ymin, ymax])


def create_edges(extended_segments):
	# create edges as intersection between extended_segments
	edges = []
	points = []
	# for each extended segment check all points that intersect other extended segment
	for index, segment in enumerate(extended_segments):
		x1 = segment.x1
		y1 = segment.y1
		x2 = segment.x2
		y2 = segment.y2
		for segment2 in extended_segments:
			x3 = segment2.x1
			y3 = segment2.y1
			x4 = segment2.x2
			y4 = segment2.y2
			# if extended segment are different and they meet
			if(segment != segment2) and (segments_intersect(x1, y1, x2, y2, x3, y3, x4, y4)):
				point = intersection(x1, y1, x2, y2, x3, y3, x4, y4)
				# point of intersection added to points list
				points.append(point)
		# added also the extremes of extended segment
		# points.append([x1,y1])
		# points.append([x2,y2])
		# order points
		points.sort(key=lambda x: (x[0], x[1]))
		for i, point in enumerate(points):
			# creating edges. Len-1 to avoid out of bound.
			if i < len(points)-1:
				next = points[i+1]
				# avoid copy
				if not ((point[0] == next[0]) and (point[1] == next[1])):
					edge = Segment(point[0], point[1], next[0], next[1])
					edge.set_angular_cluster(segment.angular_cluster)
					# for each edge set cluster = cluster of extended segment
					edge.set_spatial_cluster(segment.spatial_cluster)
					edges.append(edge)
		del points[:]
	return edges


def intersection(x1, y1, x2, y2, x3, y3, x4, y4):
	# given the extremes of 2 segments return the point of intersection
	if(x1 != x2) and (x3 != x4):
		m1 = (y2-y1)/(x2-x1)
		m2 = (y4-y3)/(x4-x3)
		q1 = y1 - (m1*x1)
		q2 = y3 - (m2*x3)
		point = intersection_lines(-m1, q1, -m2, q2)
		return point
	if x1 == x2:
		m2 = (y4-y3)/(x4-x3)
		q2 = y3 - (m2*x3)
		y = m2*x1 + q2
		point = np.array([x1,y])
		return point
	if x3 == x4:
		m1 = (y2-y1)/(x2-x1)
		q1 = y1 - (m1*x1)
		y = m1*x3 + q1
		point = np.array([x3,y])
		return point


def set_weight_offset_edges(border_lines, edges_th1):
	for edge in edges_th1:
		if (edge.angular_cluster, edge.spatial_cluster) in border_lines:
			edge.set_weight(1)


def set_weights(edges, wall_list):
	# set weight to each edge.
	# for each edge take walls with same spatial_cluster and projected them on extended segment with same spatial_cluster
	# first of all delete all the projections included completely in other projections, then merge projections that are
	# not completely overlapped. finally compute the percentage of edge covered by projections.
	tmp = []
	projections = []
	for edge in edges:
		spatial_cluster = edge.spatial_cluster
		for wall in wall_list:
			# if wall has same cluster of edge, add the projection
			if wall.spatial_cluster == spatial_cluster:
				point1 = project_point(wall.x1, wall.y1, edge.x1, edge.y1, edge.x2, edge.y2)
				point2 = project_point(wall.x2, wall.y2, edge.x1, edge.y1, edge.x2, edge.y2)
				# add the points to tmp list, that will be ordered in order to have start < end
				tmp.append(point1)
				tmp.append(point2)
				tmp.sort(key=lambda x: (x[0], x[1]))
				# ordered such that starting point of projected segment has x minor than x of ending point.
				tmp2 = [tmp[0][0], tmp[0][1], tmp[1][0], tmp[1][1]]
				# add projection x1,y1,x2,y2 only if is not already inside (avoid copy that cause trouble when deleting
				# projections included in others)
				if not already_inside_segment(tmp2, projections):
					projections.append(tmp2)
				del tmp[:]
		# remove projections included in others
		projections[:] = [tup for tup in projections if not included(tup, projections)]
		# merge of projections that intersect each other
		merged = merge_overlapped(projections)
		while merged == 1:
			merged = merge_overlapped(projections)
		# compute coverage of the edge
		coverage = compute_coverage(edge, projections)
		if length(edge.x1, edge.y1, edge.x2, edge.y2) >= 20:
			weight = coverage / length(edge.x1, edge.y1, edge.x2, edge.y2)
		else:
			weight = coverage / length(edge.x1, edge.y1, edge.x2, edge.y2)
			# weight = 0.2
		edge.set_weight(weight)
		del projections[:]
	return edges


def project_point(x1, y1, x2, y2, x3, y3):
	# given the segment with extreme x2,y2 and x3,y3, project the point1 on segment
	# if vertical segment
	if x2 == x3:
		point = np.array([x2, y1])
		return point
	# if horizontal segment
	if y2 == y3:
		point = np.array([x1, y2])
		return point
	m = (y3-y2)/(x3-x2)
	q = y2 - m*x2
	m_perp = -(1/m)
	q_perp = y1 - m_perp*x1
	# find intersection between segment and perpendicular line pass through point1
	point = intersection_lines(-m, q, -m_perp, q_perp)
	return point


def already_inside_segment(seg, projections):
	# return true if segment is already inside projections
	for seg2 in projections:
		if seg == seg2:
			return True


def included(seg1, segment_list):
	# return true if the segment is included in another segment of list
	x1 = seg1[0]
	y1 = seg1[1]
	x2 = seg1[2]
	y2 = seg1[3]
	for seg2 in segment_list:
		if seg1 != seg2:
			x3 = seg2[0]
			y3 = seg2[1]
			x4 = seg2[2]
			y4 = seg2[3]
			if(x1 == x2 == x3 == x4) and (y1 >= y3) and (y2 <= y4):
				return True
			if(x1 > x3) and (x2 <= x4):
				return True
			if(x1 >= x3) and (x2 < x4):
				return True
	return False
			

def merge_overlapped(projections):
	# return 1 if every time that 2 projections are partially overlapped, it will be created and added the union.
	# and the 2 projections are deleted from list of projections.
	for seg1 in projections:
		x1 = seg1[0]
		y1 = seg1[1]
		x2 = seg1[2]
		y2 = seg1[3]
		for seg2 in projections:
			if seg1 != seg2:
				x3 = seg2[0]
				y3 = seg2[1]
				x4 = seg2[2]
				y4 = seg2[3]
				if(x1 == x2 == x3 == x4) and (y1 < y3) and (y3 <= y2 < y4):
					union = [x1, y1, x2, y4]
					projections.append(union)
					projections.remove(seg1)
					projections.remove(seg2)
					return 1
				if(x1 < x3) and (x3 <= x2 < x4):
					union = [x1, y1, x4, y4]
					projections.append(union)
					projections.remove(seg1)
					projections.remove(seg2)
					return 1
	return 0


def compute_coverage(edge, projections):
	# return the sum of lengths of projections on the edge
	x1 = edge.x1
	y1 = edge.y1
	x2 = edge.x2
	y2 = edge.y2
	coverage = 0
	for segment in projections:
		x3 = segment[0]
		y3 = segment[1]
		x4 = segment[2]
		y4 = segment[3]
		if x1 == x2 == x3 == x4:
			if (y3 <= y1) and (y4 >= y2):
				return y2 - y1
			if (y3 >= y1) and (y4 <= y2):
				coverage += (y4-y3)
			if (y1 < y3 < y2) and (y4 > y2):
				coverage += (y2-y3)
			if (y3 < y1) and (y1 < y4 <y2):
				coverage += (y4-y1)
		else:
			if(x3 <= x1) and (x4 >= x2):
				return length(x1, y1, x2, y2)
			if(x3 >= x1) and (x4 <= x2):
				coverage += length(x3, y3, x4, y4)
			if(x1 < x3 < x2) and (x4 > x2):
				coverage += length(x3, y3, x2, y2)
			if(x3 < x1) and (x1 < x4 < x2):
				coverage += length(x1, y1, x4, y4)
	return coverage


def adjacent_edges(x, y, edge, edges):
	# return list of edges different from edge, with different m and extreme x1,y1
	e = []
	for edge1 in edges:
		x1 = edge1.x1
		y1 = edge1.y1
		x2 = edge1.x2
		y2 = edge1.y2
		if (edge != edge1) and (((x1 == x) and (y1 == y)) or ((x2 == x) and (y2 == y))):
			e.append(edge1)
	return e


def same_m(edge, edge1, epsilon=0.05):
	# return true if edge and edge1 have same m
	x1 = edge.x1
	y1 = edge.y1
	x2 = edge.x2
	y2 = edge.y2
	x3 = edge1.x1
	y3 = edge1.y1
	x4 = edge1.x2
	y4 = edge1.y2
	if(x1 == x2) and (x3 == x4):
		return True
	if ((x1 == x2) and (x3 != x4)) or ((x1 != x2) and (x3 == x4)):
		return False
	m1 = (y2-y1)/(x2-x1)
	m2 = (y4-y3)/(x4-x3)
	if abs(m1-m2) < epsilon:
		return True
	return False


def set_segment_label2(angular_ordered, label):
	# siccome facendo un clustering spaziale per ogni cluster angolare, ottengo label uguali per ogni cluster angolare,
	# mi conviene aggiungere un fattore uguale al numero di cluster usati durante il fit del metodo di clustering
	# (in questo caso 50)
	c = 0
	for ang, l in zip(angular_ordered, label):
		for index, segment in enumerate(ang):
			if l[index] != -1:
				segment.set_wall_cluster(l[index] + c)
			# in this case segments classified as outliers from DBSCAN
			else:
				# put inside one cluster all the outliers
				segment.set_wall_cluster(l[index])
		c = c + len(set(l))
	# reconstruct list of segments. keep in mind that now are not ordered
	walls = []
	for ang in angular_ordered:
		for segment in ang:
			walls.append(segment)
	return walls


def remove_less_representatives(extended_segments, threshold):
	extended_segments_v2 = []
	removed = []
	for segment in extended_segments:
		if segment.weight > threshold:
			extended_segments_v2.append(segment)
		else:
			removed.append(segment)
	return extended_segments_v2, removed


def remove_less_representatives_v2(extended_segments, threshold, param):
	extended_segments_v2 = []
	for segment in extended_segments:
		if param < segment.weight <= threshold:
			extended_segments_v2.append(segment)
	return extended_segments_v2


def check_pos(x_min, x_max, y_min, y_max, x, y):
	if x < x_min:
		x_min = x
	if x > x_max:
		x_max = x
	if y < y_min:
		y_min = y
	if y > y_max:
		y_max = y
	return x_min, x_max, y_min, y_max


def p_to_p_dist(p1, p2):
	dist = math.sqrt((p1[0] - p2[0]) * (p1[0] - p2[0]) + (p1[1] - p2[1]) * (p1[1] - p2[1]))
	return dist


def inside_segment(vertex, x1, y1, x2, y2):
	if x1 - 10 <= vertex[0] <= x2 + 10 and y1 - 10 <= vertex[1] <= y2 + 10:
		return True
	return False


def create_short_ex_lines(line, walls, size, extended_lines):
	x_min, x_max, y_min, y_max = size[0] + 20, 0, size[1] + 20, 0
	for wall in walls:
		if wall.spatial_cluster == line.spatial_cluster:
			x_min, x_max, y_min, y_max = check_pos(x_min, x_max, y_min, y_max, wall.x1, wall.y1)
			x_min, x_max, y_min, y_max = check_pos(x_min, x_max, y_min, y_max, wall.x2, wall.y2)
	x1, x2, y1, y2 = x_min, x_max, y_min, y_max
	x_min -= 100
	x_max += 100
	y_min -= 100
	y_max += 100
	if x_min < 0:
		x_min = 0
	if y_min < 0:
		y_min = 0
	if x_max > size[0]:
		x_max = size[0]
	if y_max > size[1]:
		y_max = size[1]
	if line.x2 - line.x1 == 0:
		point1 = np.array([line.x2, y_min])
		point2 = np.array([line.x2, y_max])
		point1_real = np.array([x1, y1])
		point2_real = np.array([x2, y2])
	else:
		m = (line.y2 - line.y1)/(line.x2 - line.x1)
		q = line.y1 - m * line.x1
		if x_max - x_min > y_max - y_min:
			y_for_x_min = m * x_min + q
			y_for_x_max = m * x_max + q
			y1 = m * x1 + q
			y2 = m * x2 + q
			point1 = np.array([x_min, y_for_x_min])
			point2 = np.array([x_max, y_for_x_max])
			point1_real = np.array([x1, y1])
			point2_real = np.array([x2, y2])
		else:
			x_for_y_min = (y_min - q)/m
			x_for_y_max = (y_max - q)/m
			x1 = (y1 - q)/m
			x2 = (y2 - q)/m
			point1 = np.array([x_for_y_min, y_min])
			point2 = np.array([x_for_y_max, y_max])
			point1_real = np.array([x1, y1])
			point2_real = np.array([x2, y2])
	vertices = []
	for l in extended_lines:
		if segments_intersect(l.x1, l.y1, l.x2, l.y2, point1[0], point1[1], point2[0], point2[1]):
			vertex = intersection(l.x1, l.y1, l.x2, l.y2, point1[0], point1[1], point2[0], point2[1])
			if not inside_segment(vertex, x1, y1, x2, y2):
				vertices.append(vertex)
	if len(vertices) >= 2:
		d1, d2 = None, None
		n1, n2 = None, None
		for v in vertices:
			d = p_to_p_dist(v, point1_real)
			if d1 is None or d < d1:
				d1 = d
				n1 = v
		for i, v in enumerate(vertices):
			if v[0] == n1[0] and v[1] == n1[1]:
				vertices.pop(i)
		for v in vertices:
			d = p_to_p_dist(v, point2_real)
			if d2 is None or d < d2:
				d2 = d
				n2 = v
		if n1[0] - n2[0] == 0:
			if n1[1] > n2[1]:
				n1[1] += 10
				n2[1] -= 10
			else:
				n1[1] -= 10
				n2[1] += 10
		else:
			m = (line.y2 - line.y1) / (line.x2 - line.x1)
			q = line.y1 - m * line.x1
			if n1[0] > n2[0]:
				n1[0] += 5
				n1[1] = m * n1[0] + q
				n2[0] -= 5
				n2[1] = m * n2[0] + q
			else:
				n1[0] -= 5
				n1[1] = m * n1[0] + q
				n2[0] += 5
				n2[1] = m * n2[0] + q
		short_line = ExtendedSegment(n1, n2, line.angular_cluster, line.spatial_cluster)
		return short_line
	else:
		return None
	# short_line = ExtendedSegment(point1, point2, line.angular_cluster, line.spatial_cluster)
	# return short_line
