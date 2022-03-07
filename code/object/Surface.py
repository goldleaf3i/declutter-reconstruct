# Una superficie e' un poligono atomico che non puo' essere scomposto nelle sue parti.
# L'unione di piu' superfici forma uno spazio.

from __future__ import division
import object.Segment as sg


# oggetto di tipo Faccia, ha come attributo una lista di edges che formano un poligono chiuso.
# La dimensione della lista e' >3.

class Cell(object):
	def __init__(self, edges):
		self.borders = edges
		self.out = None
		self.partial = None

	def set_out(self, o):
		self.out = o

	def set_partial(self, p):
		self.partial = p


def create_cells(edges):
	# create faces as closed chain of adjacent edges
	faces = []
	face = create_3_faces(faces, edges)
	while face:
		face = create_3_faces(faces, edges)
	face = create_4_faces(faces, edges)
	while face:
		face = create_4_faces(faces, edges)
	face = create_5_faces(faces, edges)
	while face:
		face = create_5_faces(faces, edges)
	face = create_6_faces(faces, edges)
	while face:
		face = create_6_faces(faces, edges)
	face = create_7_faces(faces, edges)
	while face:
		face = create_7_faces(faces, edges)
	return faces


def create_3_faces(faces, edges):
	# if find a faces of 3 side not already present in faces, create it and add it to faces and return True.
	boards = []
	remaining_edges = []
	# list of all edges associated to less than 2 faces, still good to create a face.
	for edge in edges:
		if edge.num_faces < 2:
			remaining_edges.append(edge)
	for edge in remaining_edges:
		x1 = edge.x1
		y1 = edge.y1
		x2 = edge.x2
		y2 = edge.y2
		common_x_edge = x1
		common_y_edge = y1
		adjacent = sg.adjacent_edges(common_x_edge, common_y_edge, edge, remaining_edges)
		# edges that have as extreme point x1,y1 and m different from edge
		for a in adjacent:
			x3 = a.x1
			y3 = a.y1
			x4 = a.x2
			y4 = a.y2
			# if there is already face with these 2 side stop and search another adjacent.
			if face_exist(edge, a, faces):
				break
			# check edge that have as extreme the one different from previous one
			if (x3 == common_x_edge) and (y3 == common_y_edge):
				common_x_a = x4
				common_y_a = y4
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			else:
				common_x_a = x3
				common_y_a = y3
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			for b in adjacent2:
				x5 = b.x1
				y5 = b.y1
				x6 = b.x2
				y6 = b.y2
				if (x5 == common_x_a) and (y5 == common_y_a):
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x6 == x2) and (y6 == y2):
						boards.extend((edge, a, b))
						face = Cell(boards)
						if not (check_belonging(face, faces)):
							edge.num_faces += 1
							a.num_faces += 1
							b.num_faces += 1
							faces.append(face)
							return True
						else:
							del boards[:]
				else:
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x5 == x2) and (y5 == y2):
						boards.extend((edge, a, b))
						face = Cell(boards)
						if not (check_belonging(face, faces)):
							edge.num_faces += 1
							a.num_faces += 1
							b.num_faces += 1
							faces.append(face)
							return True
						else:
							del boards[:]
	return False


def create_4_faces(faces, edges):
	# if find a faces of 4 side not already present in faces, create it and add it to faces and return True.

	boards = []
	remaining_edges = []
	# list of all edges associated to less than 2 faces, still good to create a face.
	for edge in edges:
		if edge.num_faces < 2:
			remaining_edges.append(edge)
	for edge in remaining_edges:
		x1 = edge.x1
		y1 = edge.y1
		x2 = edge.x2
		y2 = edge.y2
		common_x_edge = x1
		common_y_edge = y1
		adjacent = sg.adjacent_edges(common_x_edge, common_y_edge, edge, remaining_edges)
		# edges that have as extreme point x1,y1 and m different from edge
		for a in adjacent:
			x3 = a.x1
			y3 = a.y1
			x4 = a.x2
			y4 = a.y2
			# check edge that have as extreme the one different from previous one
			if face_exist(edge, a, faces):
				break
			if (x3 == common_x_edge) and (y3 == common_y_edge):
				common_x_a = x4
				common_y_a = y4
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			else:
				common_x_a = x3
				common_y_a = y3
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			for b in adjacent2:
				x5 = b.x1
				y5 = b.y1
				x6 = b.x2
				y6 = b.y2
				if (x5 == common_x_a) and (y5 == common_y_a):
				# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x6 == x2) and (y6 == y2):
						adjacent3 = []
						# choose another b of previous for loop
					# if a face of 3 side is not closed.
					else:
						common_x_b = x6
						common_y_b = y6
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				else:
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x5 == x2) and (y5 == y2):
						adjacent3 = []
					# if a face of 3 side is not closed.
					else:
						common_x_b = x5
						common_y_b = y5
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				for c in adjacent3:
					x7 = c.x1
					y7 = c.y1
					x8 = c.x2
					y8 = c.y2
					if (x7 == common_x_b) and (y7 == common_y_b):
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x8 == x2) and (y8 == y2):
							boards.extend((edge, a, b, c))
							face = Cell(boards)
							if not (check_belonging(face, faces)):
								edge.num_faces += 1
								a.num_faces += 1
								b.num_faces += 1
								c.num_faces += 1
								faces.append(face)
								return True
							else:
								del boards[:]
					else:
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x7 == x2) and (y7 == y2):
							boards.extend((edge, a, b, c))
							face = Cell(boards)
							if not (check_belonging(face, faces)):
								edge.num_faces += 1
								a.num_faces += 1
								b.num_faces += 1
								c.num_faces += 1
								faces.append(face)
								return True
							else:
								del boards[:]
	return False


def create_5_faces(faces, edges):
	# if find a faces of 5 side not already present in faces, create it and add it to faces and return True.
	boards = []
	remaining_edges = []
	# list of all edges associated to less than 2 faces, still good to create a face.
	for edge in edges:
		if edge.num_faces < 2:
			remaining_edges.append(edge)
	for edge in remaining_edges:
		x1 = edge.x1
		y1 = edge.y1
		x2 = edge.x2
		y2 = edge.y2
		common_x_edge = x1
		common_y_edge = y1
		adjacent = sg.adjacent_edges(common_x_edge, common_y_edge, edge, remaining_edges)
		# edges that have as extreme point x1,y1 and m different from edge
		for a in adjacent:
			x3 = a.x1
			y3 = a.y1
			x4 = a.x2
			y4 = a.y2
			# check edge that have as extreme the one different from previous one
			if face_exist(edge, a, faces):
				break
			if (x3 == common_x_edge) and (y3 == common_y_edge):
				common_x_a = x4
				common_y_a = y4
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			else:
				common_x_a = x3
				common_y_a = y3
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			for b in adjacent2:
				x5 = b.x1
				y5 = b.y1
				x6 = b.x2
				y6 = b.y2
				if (x5 == common_x_a) and (y5 == common_y_a):
				# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x6 == x2) and (y6 == y2):
						adjacent3 = []
						# choose another b of previous for loop
					# if a face of 3 side is not closed.
					else:
						common_x_b = x6
						common_y_b = y6
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				else:
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x5 == x2) and (y5 == y2):
						adjacent3 = []
					# if a face of 3 side is not closed.
					else:
						common_x_b = x5
						common_y_b = y5
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				for c in adjacent3:
					x7 = c.x1
					y7 = c.y1
					x8 = c.x2
					y8 = c.y2
					if (x7 == common_x_b) and (y7 == common_y_b):
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x8 == x2) and (y8 == y2):
							adjacent4 = []
						# if a face of 4 side is not closed.
						else:
							common_x_c = x8
							common_y_c = y8
							adjacent4 = sg.adjacent_edges(common_x_c, common_y_c, c, remaining_edges)
					else:
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x7 == x2) and (y7 == y2):
							adjacent4 = []
						# if a face of 4 side is not closed.
						else:
							common_x_c = x7
							common_y_c = y7
							adjacent4 = sg.adjacent_edges(common_x_c, common_y_c, c, remaining_edges)
					for d in adjacent4:
						x9 = d.x1
						y9 = d.y1
						x10 = d.x2
						y10 = d.y2
						if (x9 == common_x_c) and (y9 == common_y_c):
							# it could be a face of 5 side, check if returned to coordinates of first edge.
							if (x10 == x2) and (y10 == y2) and (d != edge):
								boards.extend((edge,a,b,c,d))
								face = Cell(boards)
								if not (check_belonging(face, faces)):
									edge.num_faces += 1
									a.num_faces += 1
									b.num_faces += 1
									c.num_faces += 1
									d.num_faces += 1
									faces.append(face)
									return True
								else:
									del boards[:]
						else:
							# it could be a face of 5 side, check if returned to coordinates of first edge.
							if (x9 == x2) and (y9 == y2) and (d != edge):
								boards.extend((edge, a, b, c, d))
								face = Cell(boards)
								if not (check_belonging(face, faces)):
									edge.num_faces += 1
									a.num_faces += 1
									b.num_faces += 1
									c.num_faces += 1
									d.num_faces += 1
									faces.append(face)
									return True
								else:
									del boards[:]
	return False


def create_6_faces(faces, edges):
	# if find a faces of 5 side not already present in faces, create it and add it to faces and return True.
	boards = []
	remaining_edges = []
	# list of all edges associated to less than 2 faces, still good to create a face.
	for edge in edges:
		if edge.num_faces < 2:
			remaining_edges.append(edge)
	for edge in remaining_edges:
		x1 = edge.x1
		y1 = edge.y1
		x2 = edge.x2
		y2 = edge.y2
		common_x_edge = x1
		common_y_edge = y1
		adjacent = sg.adjacent_edges(common_x_edge, common_y_edge, edge, remaining_edges)
		# edges that have as extreme point x1,y1 and m different from edge
		for a in adjacent:
			x3 = a.x1
			y3 = a.y1
			x4 = a.x2
			y4 = a.y2
			# check edge that have as extreme the one different from previous one
			if face_exist(edge, a, faces):
				break
			if (x3 == common_x_edge) and (y3 == common_y_edge):
				common_x_a = x4
				common_y_a = y4
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			else:
				common_x_a = x3
				common_y_a = y3
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			for b in adjacent2:
				x5 = b.x1
				y5 = b.y1
				x6 = b.x2
				y6 = b.y2
				if (x5 == common_x_a) and (y5 == common_y_a):
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x6==x2) and (y6==y2):
						adjacent3 = []
						# choose another b of previous for loop
					# if a face of 3 side is not closed.
					else:
						common_x_b = x6
						common_y_b = y6
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				else:
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x5 == x2) and (y5 == y2):
						adjacent3 = []
					# if a face of 3 side is not closed.
					else:
						common_x_b = x5
						common_y_b = y5
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				for c in adjacent3:
					x7 = c.x1
					y7 = c.y1
					x8 = c.x2
					y8 = c.y2
					if (x7 == common_x_b) and (y7 == common_y_b):
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x8 == x2) and (y8 == y2):
							adjacent4 = []
						# if a face of 4 side is not closed.
						else:
							common_x_c = x8
							common_y_c = y8
							adjacent4 = sg.adjacent_edges(common_x_c, common_y_c, c, remaining_edges)
					else:
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x7 == x2) and (y7 == y2):
							adjacent4 = []
						# if a face of 4 side is not closed.
						else:
							common_x_c = x7
							common_y_c = y7
							adjacent4 = sg.adjacent_edges(common_x_c, common_y_c, c, remaining_edges)
					for d in adjacent4:
						x9 = d.x1
						y9 = d.y1
						x10 = d.x2
						y10 = d.y2
						if (x9 == common_x_c) and (y9 == common_y_c):
							# it could be a face of 5 side, check if returned to coordinates of first edge.
							if (x10 == x2) and (y10 == y2) and (d != edge):
								adjacent5 = []
							else:
								common_x_d = x10
								common_y_d = y10
								adjacent5 = sg.adjacent_edges(common_x_d, common_y_d, d, remaining_edges)
						else:
							# it could be a face of 5 side, check if returned to coordinates of first edge.
							if (x9 == x2) and (y9 == y2) and (d != edge):
								adjacent5 = []
							else:
								common_x_d = x9
								common_y_d = y9
								adjacent5 = sg.adjacent_edges(common_x_d, common_y_d, d, remaining_edges)
						for e in adjacent5:
							x11 = e.x1
							y11 = e.y1
							x12 = e.x2
							y12 = e.y2
							if (x11 == common_x_d) and (y11 == common_y_d):
								# it could be a face of 5 side, check if returned to coordinates of first edge.
								if (x12 == x2) and (y12 == y2) and (e != edge):
									boards.extend((edge,a,b,c,d,e))
									face = Cell(boards)
									if not (check_belonging(face, faces)):
										edge.num_faces += 1
										a.num_faces += 1
										b.num_faces += 1
										c.num_faces += 1
										d.num_faces += 1
										e.num_faces += 1
										faces.append(face)
										return True
									else:
										del boards[:]
							else:
								# it could be a face of 5 side, check if returned to coordinates of first edge.
								if (x11 == x2) and (y11 == y2) and (e != edge):
									boards.extend((edge,a,b,c,d,e))
									face = Cell(boards)
									if not (check_belonging(face, faces)):
										edge.num_faces += 1
										a.num_faces += 1
										b.num_faces += 1
										c.num_faces += 1
										d.num_faces += 1
										e.num_faces += 1
										faces.append(face)
										return True
									else:
										del boards[:]
	return False


def create_7_faces(faces, edges):
	# if find a faces of 5 side not already present in faces, create it and add it to faces and return True.
	boards = []
	remaining_edges = []
	# list of all edges associated to less than 2 faces, still good to create a face.
	for edge in edges:
		if edge.num_faces < 2:
			remaining_edges.append(edge)
	for edge in remaining_edges:
		x1 = edge.x1
		y1 = edge.y1
		x2 = edge.x2
		y2 = edge.y2
		common_x_edge = x1
		common_y_edge = y1
		adjacent = sg.adjacent_edges(common_x_edge, common_y_edge, edge, remaining_edges)
		# edges that have as extreme point x1,y1 and m different from edge
		for a in adjacent:
			x3 = a.x1
			y3 = a.y1
			x4 = a.x2
			y4 = a.y2
			# check edge that have as extreme the one different from previous one
			if face_exist(edge, a, faces):
				break
			if (x3 == common_x_edge) and (y3 == common_y_edge):
				common_x_a = x4
				common_y_a = y4
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			else:
				common_x_a = x3
				common_y_a = y3
				adjacent2 = sg.adjacent_edges(common_x_a, common_y_a, a, remaining_edges)
			for b in adjacent2:
				x5 = b.x1
				y5 = b.y1
				x6 = b.x2
				y6 = b.y2
				if (x5 == common_x_a) and (y5 == common_y_a):
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x6==x2) and (y6==y2):
						adjacent3 = []
						# choose another b of previous for loop
					# if a face of 3 side is not closed.
					else:
						common_x_b = x6
						common_y_b = y6
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				else:
					# it could be a face of 3 side, check if returned to coordinates of first edge.
					if (x5 == x2) and (y5 == y2):
						adjacent3 = []
					# if a face of 3 side is not closed.
					else:
						common_x_b = x5
						common_y_b = y5
						adjacent3 = sg.adjacent_edges(common_x_b, common_y_b, b, remaining_edges)
				for c in adjacent3:
					x7 = c.x1
					y7 = c.y1
					x8 = c.x2
					y8 = c.y2
					if (x7 == common_x_b) and (y7 == common_y_b):
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x8 == x2) and (y8 == y2):
							adjacent4 = []
						# if a face of 4 side is not closed.
						else:
							common_x_c = x8
							common_y_c = y8
							adjacent4 = sg.adjacent_edges(common_x_c, common_y_c, c, remaining_edges)
					else:
						# it could be a face of 4 side, check if returned to coordinates of first edge.
						if (x7 == x2) and (y7 == y2):
							adjacent4 = []
						# if a face of 4 side is not closed.
						else:
							common_x_c = x7
							common_y_c = y7
							adjacent4 = sg.adjacent_edges(common_x_c, common_y_c, c, remaining_edges)
					for d in adjacent4:
						x9 = d.x1
						y9 = d.y1
						x10 = d.x2
						y10 = d.y2
						if (x9 == common_x_c) and (y9 == common_y_c):
							# it could be a face of 5 side, check if returned to coordinates of first edge.
							if (x10 == x2) and (y10 == y2) and (d != edge):
								adjacent5 = []
							else:
								common_x_d = x10
								common_y_d = y10
								adjacent5 = sg.adjacent_edges(common_x_d, common_y_d, d, remaining_edges)
						else:
							# it could be a face of 5 side, check if returned to coordinates of first edge.
							if (x9 == x2) and (y9 == y2) and (d != edge):
								adjacent5 = []
							else:
								common_x_d = x9
								common_y_d = y9
								adjacent5 = sg.adjacent_edges(common_x_d, common_y_d, d, remaining_edges)
						for e in adjacent5:
							x11 = e.x1
							y11 = e.y1
							x12 = e.x2
							y12 = e.y2
							if (x11 == common_x_c) and (y11 == common_y_c):
								# it could be a face of 6 side, check if returned to coordinates of first edge.
								if (x12 == x2) and (y12 == y2) and (e != edge):
									adjacent6 = []
								else:
									common_x_e = x12
									common_y_e = y12
									adjacent6 = sg.adjacent_edges(common_x_e, common_y_e, e, remaining_edges)
							else:
								# it could be a face of 6 side, check if returned to coordinates of first edge.
								if (x11 == x2) and (y11 == y2) and (e != edge):
									adjacent6 = []
								else:
									common_x_e = x11
									common_y_e = y11
									adjacent6 = sg.adjacent_edges(common_x_e, common_y_e, e, remaining_edges)
							for f in adjacent6:
								x13 = f.x1
								y13 = f.y1
								x14 = f.x2
								y14 = f.y2
								if (x13 == common_x_e) and (y13 == common_y_e):
									# it could be a face of 5 side, check if returned to coordinates of first edge.
									if (x14 == x2) and (y14 == y2) and (f != edge):
										boards.extend((edge,a,b,c,d,e,f))
										face = Cell(boards)
										if not (check_belonging(face, faces)):
											edge.num_faces += 1
											a.num_faces += 1
											b.num_faces += 1
											c.num_faces += 1
											d.num_faces += 1
											e.num_faces += 1
											f.num_faces += 1
											faces.append(face)
											return True
										else:
											del boards[:]
								else:
									# it could be a face of 5 side, check if returned to coordinates of first edge.
									if (x13 == x2) and (y13 == y2) and (f != edge):
										boards.extend((edge,a,b,c,d,e,f))
										face = Cell(boards)
										if not (check_belonging(face, faces)):
											edge.num_faces += 1
											a.num_faces += 1
											b.num_faces += 1
											c.num_faces += 1
											d.num_faces += 1
											e.num_faces += 1
											f.num_faces += 1
											faces.append(face)
											return True
										else:
											del boards[:]
	return False


def face_exist(edge, a, faces):
	# return True if already exist a face with sides edge and a.
	for face in faces:
		if (edge in face.borders) and (a in face.borders):
			return True
	return False


def check_belonging(face, faces):
	# return true if face is already inside faces or there is already one with 2 common edge
	sides = face.borders
	for face2 in faces:
		sides2 = face2.borders
		if (all(inside(side, sides2) for side in sides)) and (all(inside(side1, sides) for side1 in sides2)):
			return True
		if len(common_edge(face, face2)) >= 2:
			return True
	return False


def inside(side, sides):
	# return True if side is inside sides
	if side in sides:
		return True
	else:
		return False


def common_edge(face1, face2):
	# return list of edges in common between the 2 faces
	borders1 = []
	borders2 = []
	for border in face1.borders:
		borders1.append(border)
	for border in face2.borders:
		borders2.append(border)
	return list(set(borders1).intersection(borders2))


def adjacent(face1, face2):
	# return true if the 2 faces are adjacent
	borders1 = []
	borders2 = []
	for border in face1.borders:
		borders1.append(border)
	for border in face2.borders:
		borders2.append(border)
	common = list(set(borders1).intersection(borders2))
	if len(common) == 0:
		return False
	return True
