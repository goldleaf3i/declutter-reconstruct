import math


def rototranslate(x0, y0, angle):
	alpha = float(angle)*math.pi/180.0
	cos = math.cos
	sin = math.sin

	def RT(x, y):
		return x0+x*cos(alpha)-y*sin(alpha),y0+x*sin(alpha)+y*cos(alpha)
	return RT


def inverseRT(x0, y0, angle):
	alpha = float(angle)*math.pi/180.0
	cos = math.cos
	sin = math.sin

	def iRT(x, y):
		return -x0*cos(alpha)-y0*sin(alpha)+cos(alpha)*x+sin(alpha)*y, x0*sin(alpha)-y0*cos(alpha)-x*sin(alpha)+y*cos(alpha)
	return iRT


def transform_points(x0, y0, angle):
	# x0,y0 e' il punto da traslare, angle e' l'angolo del piano
	# calcolo la rotazione del piano
	rotation = 90-angle
	inverse = -rotation
	# proietto le coordinate (0,0) nel sistema di riferimento assoluto nel sistema di riferimento del punto
	iRT = inverseRT(x0, y0, inverse)
	(xc, yc) = iRT(0, 0)
	#restituisco la funzione che transforma rispetto al piano xc yc angolato di alfa
	return rototranslate(xc,yc,rotation)
