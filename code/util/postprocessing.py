from PIL import Image


def get_colors(pix_data, map_image):
	colors = []
	dictionary = {}
	# type dictionary
	for y in range(map_image.size[1]):
		for x in range(map_image.size[0]):
			if pix_data[x, y] != (0, 0, 0, 255):
				color = pix_data[x, y]
				if color not in colors:
					colors.append(color)
					dictionary[color] = 1
				else:
					points = dictionary[color]
					points += 1
					dictionary[color] = points
	return dictionary, colors


def remove_small_color(dictionary, colors, th):
	keys = dictionary.keys()
	for key in list(keys):
		if dictionary[key] <= th:
			colors.remove(key)


def get_color(pos, pix_data, colors):
	color = pix_data[pos]
	if color in colors:
		return True, color
	return False, None


def check_position1(pos, size):
	if pos[0] >= size[0] - 1:
		return False
	return True


def check_position2(pos):
	if pos[0] <= 0:
		return False
	return True


def check_position3(pos, size):
	if pos[1] >= size[1] - 1:
		return False
	return True


def check_position4(pos):
	if pos[1] <= 0:
		return False
	return True


def check_position5(pos, size):
	if pos[1] >= size[1] - 1 or pos[0] >= size[0] - 1:
		return False
	return True


def check_position6(pos, size):
	if pos[1] >= size[1] - 1 or pos[0] <= 0:
		return False
	return True


def check_position7(pos, size):
	if pos[1] <= 0 or pos[0] >= size[0] - 1:
		return False
	return True


def check_position8(pos):
	if pos[1] <= 0 or pos[0] <= 0:
		return False
	return True


def compute_distance(pix_data, position, size, colors):
	p1, p2, p3, p4, p5, p6, p7, p8 = True, True, True, True, True, True, True, True
	pos_x = position[0]
	pos_y = position[1]
	if pos_x == size[0] - 1:
		p1, p5, p7 = False, False, False
	if pos_x == 0:
		p2, p6, p8 = False, False, False
	if pos_y == size[1] - 1:
		p3, p5, p6 = False, False, False
	if pos_y == 0:
		p4, p7, p8 = False, False, False
	ind = 0
	color = None
	while True:
		ind += 1
		if p1:
			pos = pos_x + ind, pos_y
			p1 = check_position1(pos, size)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if p2:
			pos = pos_x - ind, pos_y
			p2 = check_position2(pos)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if p3:
			pos = pos_x, pos_y + ind
			p3 = check_position3(pos, size)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if p4:
			pos = pos_x, pos_y - ind
			p4 = check_position4(pos)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if p5:
			pos = pos_x + ind, pos_y + ind
			p5 = check_position5(pos, size)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if p6:
			pos = pos_x - ind, pos_y + ind
			p6 = check_position6(pos, size)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if p7:
			pos = pos_x + ind, pos_y - ind
			p7 = check_position7(pos, size)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if p8:
			pos = pos_x - ind, pos_y - ind
			p8 = check_position8(pos)
			flag, color = get_color(pos, pix_data, colors)
			if flag:
				break
		if not p1 and not p2 and not p3 and not p4 and not p5 and not p6 and not p7 and not p8:
			break

	if color is None:
		black = 0, 0, 0, 255
		return black
	return color


def oversegmentation(segmentation_map_path, th_post, filepath='.'):
	initial_map = Image.open(segmentation_map_path)
	final_map = initial_map.copy()
	pix_data_initial = initial_map.load()
	pix_data_final = final_map.load()

	dictionary, colors = get_colors(pix_data_initial, initial_map)

	new_colors = colors[:]
	if (255, 255, 255, 255) in new_colors:
		new_colors.remove((255, 255, 255, 255))
		del dictionary[(255, 255, 255, 255)]

	remove_small_color(dictionary, new_colors, th_post)

	colors_eliminated = [(255, 255, 255, 255)]
	for color in colors:
		if color not in new_colors:
			colors_eliminated.append(color)

	for y in range(initial_map.size[1]):
		for x in range(initial_map.size[0]):
			position = [x, y]
			pixel_color = pix_data_initial[x, y]
			if pixel_color in colors_eliminated:
				new_pixel_color = compute_distance(pix_data_initial, position, initial_map.size, new_colors)
				pix_data_final[x, y] = new_pixel_color

	title = filepath + '8b_rooms_th1_on_map_post.png'
	title_pdf = filepath + '8b_rooms_th1_on_map_post.pdf'
	print('8b_rooms_th1_on_map_post')
	final_map.save(title)
	pdf_image = final_map.convert('RGB')
	pdf_image.save(title_pdf)
	return title, new_colors


def clear_rooms(room_image, param_obj, rooms):
	initial_map = Image.open(room_image)
	final_map = initial_map.copy()
	pix_data_initial = initial_map.load()
	pix_data_final = final_map.load()

	dictionary, colors = get_colors(pix_data_initial, initial_map)

	new_colors = colors[:]

	remove_small_color(dictionary, new_colors, param_obj.th_post)

	colors_eliminated = []
	for color in colors:
		if color not in new_colors:
			colors_eliminated.append(color)

	for y in range(initial_map.size[1]):
		for x in range(initial_map.size[0]):
			position = [x, y]
			pixel_color = pix_data_initial[x, y]
			if pixel_color in colors_eliminated:
				new_pixel_color = compute_distance(pix_data_initial, position, initial_map.size, new_colors)
				pix_data_final[x, y] = new_pixel_color

	final_map.save(room_image)
