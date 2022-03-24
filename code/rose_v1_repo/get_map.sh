#!/bin/bash
scp iliad@bt:/home/iliad/workspace/iliad_ws/src/graph_map/graph_map/maps_tmp/occupancy_map.pgm map.pgm

source venv/bin/activate
venv/bin/python FFT_MQ.py map.pgm
