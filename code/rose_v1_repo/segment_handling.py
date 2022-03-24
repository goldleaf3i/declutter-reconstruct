import math
import numpy as np
from scipy.spatial import ConvexHull


class Segment:
    def __init__(self):
        # input parameters
        self.id = -1  # segemnt id, should correspond to the label
        self.feature = False  # flag distinguisihing features from walls (will be used later)
        self.cells = np.array([])  # cells ids in the map
        # pre-processed data
        self.cells_corners = np.empty((0, 2), float)  # cells' corners as used for are computation
        # descriptor
        self.convex_hull = list([])  # vertices of a convex hull of segemnt
        self.minimal_bounding_box = list([])  # vertices of a convex of minimal bounding box
        self.rectangle_direction = []  # vector in the direction of longer edge of rectangle
        self.rectangle_orthogonal = []  # vector in the ortogonal direction
        self.center = []  # center of mass of MBB
        self.angle = []
        self.mbb_area = []

    @staticmethod
    def polygon_area(x, y):
        return 0.5 * np.abs(np.dot(x, np.roll(y, 1)) - np.dot(y, np.roll(x, 1)))

    @staticmethod
    def sorting_criterion(x):
        return (math.atan2(x[0], x[1]) + 2 * math.pi) % (2 * math.pi)

    @staticmethod
    def compute_corner(a, corner):
        return [a[0] + corner[0], a[1] + corner[1]]

    @staticmethod
    def orthogonal_vector(vector):
        # from vector returns a orthogonal/perpendicular vector of equal length
        return -1 * vector[1], vector[0]

    @staticmethod
    def unit_vector(pt0, pt1):
        # returns an unit vector that points in the direction of pt0 to pt1
        dis_0_to_1 = math.sqrt((pt0[0] - pt1[0]) ** 2 + (pt0[1] - pt1[1]) ** 2)
        return (pt1[0] - pt0[0]) / dis_0_to_1, (pt1[1] - pt0[1]) / dis_0_to_1

    @staticmethod
    def bounding_area(index, hull):
        unit_vector_p = Segment.unit_vector(hull[index, :], hull[index + 1, :])
        unit_vector_o = Segment.orthogonal_vector(unit_vector_p)

        dis_p = tuple(np.dot(unit_vector_p, pt) for pt in hull)
        dis_o = tuple(np.dot(unit_vector_o, pt) for pt in hull)

        min_p = min(dis_p)
        min_o = min(dis_o)
        len_p = max(dis_p) - min_p
        len_o = max(dis_o) - min_o

        return {'area': len_p * len_o,
                'length_parallel': len_p,
                'length_orthogonal': len_o,
                'rectangle_center': (min_p + len_p / 2, min_o + len_o / 2),
                'unit_vector': unit_vector_p,
                'orthogonal_vector': unit_vector_o
                }

    @staticmethod
    def rotate_points(center_of_rotation, angle, points):
        # Requires: center_of_rotation to be a 2d vector. ex: (1.56, -23.4)
        #           angle to be in radians
        #           points to be a list or tuple of points. ex: ((1.56, -23.4), (1.56, -23.4))
        # Effects: rotates a point cloud around the center_of_rotation point by angle
        rot_points = []
        ang = []
        for pt in points:
            diff = tuple([pt[d] - center_of_rotation[d] for d in range(2)])
            diff_angle = math.atan2(diff[1], diff[0]) + angle
            ang.append(diff_angle)
            diff_length = math.sqrt(sum([d ** 2 for d in diff]))
            rot_points.append((center_of_rotation[0] + diff_length * math.cos(diff_angle),
                               center_of_rotation[1] + diff_length * math.sin(diff_angle)))

        return rot_points

    @staticmethod
    def sorted_rect(vec):
        # returns vec in clockwise order, starting with topleft
        normd = vec - np.average(vec, axis=0)  # vertices relative to centroid
        k = np.apply_along_axis(Segment.sorting_criterion, axis=1, arr=normd)
        order = np.argsort(k)
        return vec[order]

    @staticmethod
    def to_xy_coordinates(unit_vector_angle, point):
        # returns converted unit vector coordinates in x, y coordinates
        angle_orthogonal = unit_vector_angle + math.pi / 2
        return point[0] * math.cos(unit_vector_angle) + point[1] * math.cos(angle_orthogonal), \
               point[0] * math.sin(unit_vector_angle) + point[1] * math.sin(angle_orthogonal)

    @staticmethod
    def rectangle_corners(rectangle):
        # Requires: the output of mon_bounding_rectangle
        # Effects: returns the corner locations of the bounding rectangle
        corner_points = []
        for i1 in (.5, -.5):
            for i2 in (i1, -1 * i1):
                corner_points.append((rectangle['rectangle_center'][0] + i1 * rectangle['length_parallel'],
                                      rectangle['rectangle_center'][1] + i2 * rectangle['length_orthogonal']))

        r_points = Segment.rotate_points(rectangle['rectangle_center'], rectangle['unit_vector_angle'], corner_points)

        asort = set(r_points)
        local_poly = np.array(list(asort))
        local_poly = np.column_stack((local_poly[:, 0], local_poly[:, 1]))
        local_poly_sort = Segment.sorted_rect(local_poly)

        local_poly_sort = np.append(local_poly_sort, [local_poly_sort[0, :]], axis=0)
        return local_poly_sort

    def add_cells(self, cells):
        self.cells = cells

        corners = np.array([[0.5, 0.5],
                            [-0.5, 0.5],
                            [-0.5, -0.5],
                            [0.5, -0.5]])
        for corner in corners:
            new = np.apply_along_axis(Segment.compute_corner, 1, self.cells, corner = corner)
            self.cells_corners = np.append(self.cells_corners, np.array(new), axis=0)

    def compute_hull(self):
        hull_ordered = [self.cells_corners[index] for index in ConvexHull(self.cells_corners).vertices]
        hull_ordered.append(hull_ordered[0])
        self.convex_hull = np.array(hull_ordered)

    def compute_mbb(self):
        if not self.convex_hull.size == 0:
            self.compute_hull()
        min_rectangle = Segment.bounding_area(0, self.convex_hull)

        for i in range(1, len(self.convex_hull) - 1):
            rectangle = Segment.bounding_area(i, self.convex_hull)
            if rectangle['area'] < min_rectangle['area']:
                min_rectangle = rectangle

        min_rectangle['unit_vector_angle'] = math.atan2(min_rectangle['unit_vector'][1],
                                                        min_rectangle['unit_vector'][0])
        min_rectangle['rectangle_center'] = Segment.to_xy_coordinates(min_rectangle['unit_vector_angle'],
                                                                      min_rectangle['rectangle_center'])

        self.minimal_bounding_box = Segment.rectangle_corners(min_rectangle)

        self.center = min_rectangle['rectangle_center']

        self.mbb_area = Segment.polygon_area(self.minimal_bounding_box[:, 0], self.minimal_bounding_box[:, 1])

        if min_rectangle['length_parallel'] < min_rectangle['length_orthogonal']:
            self.rectangle_direction = min_rectangle[
                'orthogonal_vector']  # np.array([min_rectangle['unit_vector'][1], -min_rectangle['unit_vector'][0]])
            self.rectangle_orthogonal = min_rectangle['unit_vector']
        else:
            self.rectangle_direction = min_rectangle['unit_vector']
            self.rectangle_orthogonal = min_rectangle[
                'orthogonal_vector']  # np.array([min_rectangle['unit_vector'][1], -min_rectangle['unit_vector'][0]])
        self.angle = np.arctan2(self.rectangle_direction[1], self.rectangle_direction[0])
