from __future__ import division
from object import Segment as sg
import math


def mean_shift(h, min_offset, walls):
	# compute center_clusters with mean-shift. The radian inclinations of the walls are clustered
	# for each wall set the inclination
	for wall in walls:
		direction = sg.radiant_inclination(wall.x1, wall.y1, wall.x2, wall.y2)
		if direction < -0.26:
			direction += math.pi
		elif 0 > direction >= -0.26:
			direction = -direction
		wall.set_direction(direction)

	# compute list of inclination of edges
	directions = []
	for wall in walls:
		directions.append(wall.direction)

	# initially cluster centers are all the inclinations
	cluster_centers = directions[:]
	new_cluster_centers = compute_new_cluster_centers(h, cluster_centers, directions)
	max_diff = maximum_difference(cluster_centers, new_cluster_centers)
	cluster_centers = new_cluster_centers[:]
	del new_cluster_centers[:]
	while max_diff > min_offset:
		new_cluster_centers = compute_new_cluster_centers(h, cluster_centers, directions)
		max_diff = maximum_difference(cluster_centers, new_cluster_centers)
		cluster_centers = new_cluster_centers[:]
		del new_cluster_centers[:]
	return cluster_centers


def compute_new_cluster_centers(h, cluster_centers, directions):
	# compute new cluster_centers starting from those of previous step

	new_cluster_centers = []	
	for alfa in cluster_centers:
		numerator = 0
		# compute numerator
		for teta in directions:
			kernel = 0
			condition = (1-(math.cos(alfa-teta)))/h
			if condition <= 1:
				kernel = math.pow(1-condition, 2)
			tmp = kernel * teta
			numerator += tmp
		denominator = 0
		# compute the denominator
		for teta in directions:
			kernel = 0
			condition = (1-(math.cos(alfa-teta)))/h
			if condition <= 1:
				kernel = math.pow(1-condition, 2)
			denominator += kernel
		# finally, add new cluster_center to list of new_cluster_centers
		new_cluster_centers.append(numerator/denominator)
	return new_cluster_centers


def maximum_difference(cluster_centers, new_cluster_centers):
	# compute maxi difference between new and old cluster_centers to determine if clustering could be considered finished

	max_diff = 0
	for index, old in enumerate(cluster_centers):
		new = new_cluster_centers[index]
		if abs(new-old) > max_diff:
			max_diff = abs(new-old)
	return max_diff


def indexes_to_be_deleted(num_min, min_length, cluster_centers, walls_list, diagonals=True):
	# if DIAGONALS = TRUE DELETE DIAGONALS LINES
	# trova gli indici di posizione dei cluster angolari causati da un numero di muri < num_min, e con ognuno di questi muri con
	# lunghezza < lunghezza_min. Questi cluster angolari sono quindi causati da muri che possono essere considerati rumore, quindi elimino
	# i cluster angolari e i rispetivi muri (indice cluster angolare in cluster_centers = indice muro in lista_muri)
	indexes = []
	for cluster in set(cluster_centers):
		# if angular cluster appear less then num_min in cluster_centers list
		if cluster_centers.count(cluster) <= num_min:
			lengths = []
			candidates = []
			for index, cluster1 in enumerate(cluster_centers):
				# for each cluster equal to this cluster (with less then tot occurrences)
				if cluster == cluster1:
					candidates.append(index)
					# take the respective wall (index cluster_centers = index wall_list)
					m = walls_list[index]
					lengths.append(sg.length(m.x1, m.y1, m.x2, m.y2))
			# if all lengths are <= min_length
			if all_short(lengths, min_length):
				for i in candidates:
					indexes.append(i)
			del candidates[:]
			del lengths[:]
	if diagonals:
		diag = diagonal_indexes(cluster_centers)
		indexes = indexes + diag
	return set(indexes)


def diagonal_indexes(cluster_centers):
	# find position indexes of angular diagonal clusters

	indexes = []
	for cluster in set(cluster_centers):
		if not (-0.15 < cluster < 0.15) and not (1.45 < cluster < 1.7) and not (-1.7 < cluster < -1.45):
			for index, cluster1 in enumerate(cluster_centers):
				if cluster == cluster1:
					indexes.append(index)
	return indexes


def all_short(lengths, min_length):
	# return True if all lengths are less then min_length

	for length in lengths:
		if length > min_length:
			return False
	return True


def merge_similar_cluster(cluster_centers):
	# some clusters could be very similar. in this case simple average is used.

	for cluster1 in set(cluster_centers):
		for cluster2 in set(cluster_centers):
			if (cluster1 != cluster2) and (abs(cluster1-cluster2) <= 0.01):
				new_cluster = (cluster1+cluster2)/2
				# print("merge"+str(c1)+" e "+str(c2)+" in "+str(new_cluster))
				for index, cluster3 in enumerate(cluster_centers):
					if(cluster3 == cluster1) or (cluster3 == cluster2):
						cluster_centers[index] = new_cluster
				return True
	return False
