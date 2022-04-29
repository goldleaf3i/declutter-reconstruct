import numpy as np

# -------------------------------
# metodo di classificazione per le celle
metodo_classificazione_celle = 1
# metodo_classificazione_celle = 2
# -------------------------------


class PathObj:
    def __init__(self):
        self.name_folder_input = ''
        self.path_folder_input = ''
        self.path_folder_output = ''
        self.path_log_folder = ''
        # name of image
        self.metric_map_name = ''
        self.metric_map_path = ''
        self.path_xml = ''
        self.filepath = ''
        self.path_orebro = ''
        self.orebro_img = ''
        self.gt_color = ''


class ParameterObj:
    def __init__(self):
        # bormann
        self.bormann = False

        # Thresholding parameters
        self.cv2thresh = 150

        # TODO probably we don't use canny anymore. so we can delete this parameters. check.
        # Canny parameters
        self.minVal = 30
        self.maxVal = 90
        self.apertureSize = 5

        # Hough parameters
        self.rho = 1
        self.theta = np.pi / 180
        self.thresholdHough = 25
        self.minLineLength = 10
        self.maxLineGap = 5

        # Offset for x_min,x_max,y_min,y_max
        self.offset = 20

        # Angular Clusters parameters, mean-shift parameters
        # diagonals. if there is some obliques lines set diagonals=False
        self.diagonals = False
        self.h = 0.023
        self.minOffset = 0.00001

        # Spatial cluster parameters
        self.sogliaLateraleClusterMura = 5

        # Extended lines parameters
        self.th1 = 0.1
        self.distance_extended_segment = 20

        # Edges parameters
        self.threshold_edges = 0.1

        # Matrix parameters
        # parametro che divide il peso di un edge per attribuire un peso per la matrice L di Mura
        self.sigma = 0.125

        # DBSCAN parameters
        self.eps = 0.85  # 0.85#1.5#0.85
        self.minPts = 1

        # Cells classification parameters
        self.division_threshold = 5

        # Orebro parameters
        self.filter_level = 0.01

        # post processing parameters
        self.th_post = 750
        # TODO maybe this parameter is not needed anymore (th_margin)
        self.th_margin = 1000

        # evaluation parameters
        self.threshold_color = 200
        self.tab_sliding = []
        self.tab_comparison = None
        # self.total_index = [['map', 'prec micro', 'prec macro', 'rec micro', 'rec macro', 'iou mean seg', 'iou seg',
        #                     'iou mean gt', 'iou gt'], [[], [], [], [], [], [], [], [], []]]
        self.total_index = [['map'], ['prec micro'], ['prec macro'], ['rec micro'], ['rec macro'], ['iou mean seg'],
                            ['iou seg'], ['iou mean gt'], ['iou gt']]
        self.total_index_morphological = [['map'], ['prec micro'], ['prec macro'], ['rec micro'], ['rec macro'], ['iou mean seg'],
                            ['iou seg'], ['iou mean gt'], ['iou gt']]
        self.total_index_distance = [['map'], ['prec micro'], ['prec macro'], ['rec micro'], ['rec macro'], ['iou mean seg'],
                            ['iou seg'], ['iou mean gt'], ['iou gt']]
        self.total_index_voronoi = [['map'], ['prec micro'], ['prec macro'], ['rec micro'], ['rec macro'], ['iou mean seg'],
                            ['iou seg'], ['iou mean gt'], ['iou gt']]

        # integration from orebro
        self.comp = None

        # voronoi parameters
        self.voronoi_closeness = 10
        self.blur = 8
        self.iterations = 5

    def set_threshold_hough(self, value):
        self.thresholdHough = value

    def set_sigma(self, value):
        self.sigma = value

    def set_eps(self, value):
        self.eps = value

    def set_filter_level(self, value):
        self.filter_level = value

    def set_th1(self, value):
        self.th1 = value

    def set_distance_extended_segment(self, value):
        self.distance_extended_segment = value


class ParameterDraw:
    def __init__(self):
        self.map = True
        self.canny = False
        self.hough = True
        self.walls = True
        self.contour = False
        self.angular_cluster = True
        self.representative_segments = True
        self.spatial_wall_cluster = True
        self.spatial_cluster = True
        self.extended_lines = True
        self.edges = True
        self.dbscan = True
        self.cells_in_out = True
        self.rooms = True
        self.rooms_on_map = True
        self.rooms_on_map_prediction = True
        self.rooms_on_map_lines = True
        self.sides = False
        self.complete = True
