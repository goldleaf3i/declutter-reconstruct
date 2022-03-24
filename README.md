# Robust Structure Identification and Room Segmentation of Cluttered Indoor Environments from Occupancy Grid Maps 	

## Introduction

ROSE^2 is a method for RObust StructurE identification and ROom SEgmentation (\ours ) of 2D occupancy maps, which may be cluttered and incomplete. Our method identifies the main directions of walls and is resilient to clutter and partial observations, allowing to extract a clean, abstract geometrical  floor-plan-like description of the environment, which is used to segment, i.e., to identify rooms in, the original occupancy grid map.
This repository should be used with the code provided by [ROSE](https://github.com/tkucner/rose).
For full details refer to [the paper](https://arxiv.org/submit/4198279/).

## Structure of the repository

1. The folder `RESULTS` contains the results as described in our paper
2. The folder `CODE` contains the source code of our method
3. The folder `MAPFILES` contains the maps we used in our method for evaluation

## Simple working exmaple
Run the main .py file inside the CODE folder, and select the maps you want to process in the DATA folder on the prompt. 

`python runME.py`

If you have some doubts/bugs just write to me and I'll be happy to help.
