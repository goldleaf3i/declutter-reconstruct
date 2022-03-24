import argparse
import numpy as np

from skimage import io
from skimage.util import img_as_ubyte

from fft_structure_extraction import FFTStructureExtraction as structure_extraction

import fft_structure_extraction


def main(path_to_image, path_to_folder, filter_level, par):
    # FFT

    grid_map = img_as_ubyte(io.imread(path_to_image))
    rose = structure_extraction(grid_map, peak_height=0.2, par=50)
    rose.process_map()

    rose.simple_filter_map(filter_level)
    fft_structure_extraction.save_simple_map(path_to_folder + "_" + str(filter_level) + ".png", rose.analysed_map, rose.shape)
    # rose.simple_filter_map(filter_level)

    # rose.histogram_filtering()

    # rose.generate_initial_hypothesis_with_kde()
    rose.generate_initial_hypothesis_simple()
    # rose.find_walls_with_line_segments()
    rose.find_walls_flood_filing()

    rose.report()

    # TODO adjust this part of the code
    comp = []
    for p in rose.comp:
        p0 = rose.angles[p[0]]
        p1 = rose.angles[p[1]]
        p0 += np.pi/2
        p1 += np.pi/2
        p0 = p0 % (2*np.pi)
        p1 = p1 % (2*np.pi)
        p0 = np.pi - p0
        p1 = np.pi - p1
        comp.append(p0)
        comp.append(p1)
    par.comp = comp

    visualisation = {"Binary map": False,
                     "FFT Spectrum": False,
                     "Unfolded FFT Spectrum": False,
                     "FFT Spectrum Signal": False,
                     "FFT Spectrum Noise": False,
                     "Map Reconstructed Signal": False,
                     "Map Reconstructed Noise": False,
                     "Map Scored Good": True,
                     "Map Scored Bad": False,
                     "Map Scored Diff": False,
                     "Map Split Good": False,
                     "FFT Map Split Good": False,
                     "Side by Side": False,
                     "Histogram of pixels quality": False,
                     "Histogram of scaled pixels quality": False,
                     "Simple Filtered Map": False,
                     "FFT spectrum with directions": False,
                     "Map with directions": False,
                     "Partial Scores": False,
                     "Partial Reconstructs": False,
                     "Threshold Setup with Clusters": False,
                     "Cluster Filtered Map": False,
                     "Map with walls": False,
                     "Map with slices": False,
                     "Wall lines from mbb": True,
                     "Labels and Raw map": False,
                     "Raw line segments": False,
                     "Clustered line segments": True,
                     "Short wall lines from mbb": True,
                     "Short wall lines over original map": True
                     }
    rose.show(visualisation, path_to_folder, rose.shape)


# if __name__ == "__main__":
#     # parse input
#     parser = argparse.ArgumentParser()
#     parser.add_argument('img_file', help='Path to the map')
#     args = parser.parse_args()
#     main(args, '')
