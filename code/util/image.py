# -*- coding: utf-8 -*-

import cv2
import numpy as np


def trova_contorno(t,m,edges_canny,file_name):

	'''
	hough su canny, plotto le hough lines su un'immagine bianca, applico la funzione cv2.findContours con retrieval_mode = external per trovare i contorni esterni. Se i contorni esterni sono più di 1, devo riapplicare la hough aumentando la threshold, in modo da rendere unico il contorno esterno.
	'''
	hough_contorni = cv2.HoughLinesP(edges_canny,1,np.pi/180,threshold=t,minLineLength=1,maxLineGap=m)
	if cv2.__version__[0] == '3' :
		hough_contorni = [i[0]for i in hough_contorni]
	elif cv2.__version__[0] == '2' :
		hough_contorni = hough_contorni[0]
	else :
		raise EnvironmentError('Opencv Version Error. You should have OpenCv 2.* or 3.*')

	#creo immagine bianca su cui plottare le hough lines
	img4 = cv2.imread(file_name,0)
	ret,bianca = cv2.threshold(img4,255,255,cv2.THRESH_BINARY_INV)
	bianca2 = bianca.copy()
	#plotto le hough lines sull'immagine bianca
	for x1,y1,x2,y2 in hough_contorni:
		cv2.line(bianca2,(x1,y1),(x2,y2),(0,0,0),2)

	ret,bianca2 = cv2.threshold(bianca2,253,255,cv2.THRESH_BINARY_INV)
	if cv2.__version__[0] == '3' :
		img_copy, contours, hierarchy = cv2.findContours(image = bianca2.copy(), mode = cv2.RETR_EXTERNAL, method = cv2.CHAIN_APPROX_SIMPLE)
	elif cv2.__version__[0] == '2' :
		#trovo il contorno esterno
		contours, hierarchy = cv2.findContours(bianca2.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
	else :
		raise EnvironmentError('Opencv Version Error. You should have OpenCv 2.* or 3.*')

	while(len(contours)!=1): #se il contorno esterno trovato non è unico
		t+=1 #aumento la threshold

		# COntrollo che le Hough funzionino bene compatibilmente alla versione di OpenCV
		hough_contorni = cv2.HoughLinesP(edges_canny,1,np.pi/180,threshold=t,minLineLength=1,maxLineGap=m)
		if cv2.__version__[0] == '3' :
			hough_contorni = [i[0]for i in hough_contorni]
		elif cv2.__version__[0] == '2' :
			hough_contorni = hough_contorni[0]
		else :
			raise EnvironmentError('Opencv Version Error. You should have OpenCv 2.* or 3.*')

		bianca2 = bianca.copy()
		for x1,y1,x2,y2 in hough_contorni:
			cv2.line(bianca2,(x1,y1),(x2,y2),(0,0,0),2)
		ret,bianca2 = cv2.threshold(bianca2,253,255,cv2.THRESH_BINARY_INV)

		#Controllo che findcontours funzioni bene con openCvDiverse
		if cv2.__version__[0] == '3' :
			img_copy, contours, hierarchy = cv2.findContours(image = bianca2.copy(), mode = cv2.RETR_EXTERNAL, method = cv2.CHAIN_APPROX_SIMPLE)
		elif cv2.__version__[0] == '2' :
			#trovo il contorno esterno
			contours, hierarchy = cv2.findContours(bianca2.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
		else :
			raise EnvironmentError('Opencv Version Error. You should have OpenCv 2.* or 3.*')
	return (hough_contorni,contours)
