from __future__ import division
from object import Surface as fc
import numpy as np
import math


def create_matrix_l(faces, sigma, val):
	# create matrix L as in Mura paper
	riga = []
	# create matrix with only first line
	face = faces[0]
	for face2 in faces:
		adj = fc.adjacent(face, face2)
		if face == face2:
			val = 1
		else:
			if adj:
				e = fc.common_edge(face, face2)
				w = e[0].weight
				val = math.exp(-w/sigma)
			else:
				val = 0
		riga.append(val)
	matrix_l = np.matrix([riga])
	del riga[:]

	for face in faces[1:]:
		for face2 in faces:
			adj = fc.adjacent(face, face2)
			if face == face2:
				val = 1
			else:
				if adj:
					e = fc.common_edge(face, face2)
					w = e[0].weight
					val = math.exp(-w/sigma)
				else:
					val = 0
			riga.append(val)
		matrix_l = np.vstack([matrix_l, riga])
		del riga[:]
	return matrix_l


def create_matrix_d(matrix_l):
	# create matrix D as in Mura paper
	vett = []
	for row in matrix_l:
		vett.append(row.sum())
	matrix_d = np.asmatrix(np.diag(vett))
	return matrix_d


def symmetry(M):
	# make symmetric matrix M to put in input at dbscan
	if type(M) == np.matrix:
		M = np.array(M)
	[r, c] = M.shape
	M2 = np.copy(M)
	for i in range(r):
		for j in range(i, c):
			M2[i, j] = (M[i, j] + M[j, i]) / 2
			M2[j, i] = M2[i, j]
	return M2

