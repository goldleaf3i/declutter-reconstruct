# spazio si intende un ambiente composto da piu' superfici alla quale e' possibile associare un significato diverso
# a seconda della forma e della dimensione che possiede.
# Uno spazio infatti puo' essere distinto tra corridoio o stanza


class Space(object):
	def __init__(self, cells, room, corresponding_cells, id):
		# questi prima erano dei semplici poligoni, ora sono delle vere e proprie celle
		self.cells = crea_cellette(cells, corresponding_cells)
		self.space = room
		self.id = id
		# default is considered intern
		self.out = False
		self.partial = False
		# predicted area of a space is by default 0
		self.predicted_area = 0
		self.cluster_frontiera = None

	def set_out(self, o):
		self.out = o

	def set_partial(self, p):
		self.partial = p

	def set_space(self, spazio):
		self.space = spazio

	def set_cluster_frontiera(self, cluster_fr):
		self.cluster_frontiera = cluster_fr


class Celletta(object):
	def __init__(self, polygon_cella, cella_normale):
		self.cella = polygon_cella #oggetto di tipo poligono
		self.c = cella_normale #oggetto di tipo Superficie(mi serve per il peso degli edge)
		#self.out = True #default
		self.parziale = False #default
		self.out = None
		self.parziale = None
		self.vedo_frontiera = None
		self.cluster_frontiera = None

	def set_celletta_out(self, o):
		self.out = o

	def set_celletta_parziale(self, p):
		self.parziale = p

	# mi serve specialmente per immagazzinare l'informazione che una cella ha visto anche solo una piccola parte di una frontiera
	def set_vedo_frontiera(self, bool):
		self.vedo_frontiera = bool

	def set_cluster_frontiera(self, cluster):
		self.cluster_frontiera = cluster


def crea_cellette(cells, celle_corrispondenti):	
	cellette = []
	for cella, c in zip(cells, celle_corrispondenti):
		c = Celletta(cella, c)
		cellette.append(c)
	return cellette
