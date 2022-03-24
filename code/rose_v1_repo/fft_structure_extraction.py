import math
import os
import time

import matplotlib.patches as patches
import matplotlib.pyplot as plt
import numpy as np
import png
import scipy.stats as stats
import skimage.draw as sk_draw
from scipy import ndimage
from scipy.signal import find_peaks
from skimage.filters import threshold_yen
from skimage.segmentation import flood_fill
from skimage.morphology import binary_dilation
from sklearn import mixture
from sklearn.cluster import DBSCAN
from sklearn.neighbors import KernelDensity

import helpers as he
import segment_handling as sh


def generate_line_segments_per_direction(slices):
    slices_lines = []
    for s in slices:
        slices_lines.append([s[0][0][0], s[1][0][0], s[0][0][-1], s[1][0][-1]])
    return slices_lines


def save_simple_map(name, map_to_save, shape):
    with open(name, "wb") as out:
        png_writer = png.Writer(shape[1], shape[0], greyscale=True, alpha=False, bitdepth=1)
        img = map_to_save[:shape[0], :shape[1]]
        png_writer.write(out, img)


class FFTStructureExtraction:
    def __init__(self, grid_map, ang_tr=0.1, amp_tr=0.8, peak_height=0.5, par=200, smooth=False, sigma=3):
        self.clustering_v_labels = []
        self.slice_v_lines = []
        self.slice_h_lines = []
        self.clustering_h_labels = []
        self.all_lines = []
        self.segments_h_mbb_lines = []
        self.segments_v_mbb_lines = []
        self.segments_h = []
        self.segments_v = []
        self.slices_h_dir = []
        self.slices_v_dir = []
        self.slices_v_ids = []
        self.slices_h_ids = []
        self.slices_v = []
        self.slices_h = []
        self.scored_hypothesis_v_cut = []
        self.scored_hypothesis_h_cut = []
        self.part_reconstruction = []
        self.lines = []
        self.lines_long_h = []
        self.lines_long_v = []
        self.cell_hypothesis_h = []
        self.cell_hypothesis_v = []
        self.lines_hypothesis_h = []
        self.lines_hypothesis_v = []
        self.scored_hypothesis_h = []
        self.scored_hypothesis_v = []
        self.d_row_h = []
        self.d_row_v = []
        self.part_mask = []
        self.part_score = []

        self.ang_tr = ang_tr  # rad
        self.amp_tr = amp_tr  # ratio
        self.peak_height = peak_height
        self.par = par
        self.smooth = smooth
        self.sigma = sigma
        self.grid_map = []
        self.binary_map = None
        self.analysed_map = None
        self.smooth = smooth

        self.pixel_quality_histogram = []
        self.pixel_quality_gmm = []
        self.cluster_quality_threshold = []

        self.line_parameters = []
        self.norm_ft_image = None
        self.pol = []
        self.angles = []
        self.pol_h = []
        self.peak_indices = []
        self.rads = []
        self.comp = []
        self.mask_ft_image = []
        self.mask_inv_ft_image = []
        self.map_scored_good = []
        self.map_scored_bad = []
        self.map_scored_diff = []
        self.map_split_good = []
        self.ft_image_split = []
        self.ft_image = []
        self.map_split_good_t = []
        self.shape = None

        self.load_map(grid_map)

    def load_map(self, grid_map):
        print("Load Map.....", end="", flush=True)
        ti = time.time()
        if len(grid_map.shape) == 3:
            grid_map = grid_map[:, :, 1]
        thresh = threshold_yen(grid_map)
        self.binary_map = grid_map <= thresh
        self.binary_map = self.binary_map
        if self.binary_map.shape[0] % 2 != 0:
            t = np.zeros((self.binary_map.shape[0] + 1, self.binary_map.shape[1]), dtype=bool)
            t[:-1, :] = self.binary_map
            self.binary_map = t
        if self.binary_map.shape[1] % 2 != 0:
            t = np.zeros((self.binary_map.shape[0], self.binary_map.shape[1] + 1), dtype=bool)
            t[:, :-1] = self.binary_map
            self.binary_map = t
        # pad with zeros to square
        self.shape = self.binary_map.shape
        square_map = np.zeros((np.max(self.binary_map.shape), np.max(self.binary_map.shape)), dtype=bool)
        square_map[:self.binary_map.shape[0], :self.binary_map.shape[1]] = self.binary_map
        self.binary_map = square_map
        self.analysed_map = self.binary_map.copy()
        print("OK ({0:.2f})".format(time.time() - ti))

    def compute_fft(self):
        print("Compute FFT.....", end="", flush=True)
        t = time.time()
        self.ft_image = np.fft.fftshift(np.fft.fft2(self.binary_map * 1))

        self.norm_ft_image = (np.abs(self.ft_image) / np.max(np.abs(self.ft_image))) * 255.0
        self.norm_ft_image = self.norm_ft_image.astype(int)

        print("OK ({0:.2f})".format(time.time() - t))

    def generate_mask(self, x1_1, y1_1, x2_1, y2_1, x1_2, y1_2, x2_2, y2_2, y_org):
        mask_1 = np.zeros(self.norm_ft_image.shape, dtype=np.uint8)
        # c_1 = np.array([Y1_1, Y2_1, self.norm_ft_image.shape[1], self.norm_ft_image.shape[1]])
        c_1 = np.array([y1_1, y2_1, self.norm_ft_image.shape[0], self.norm_ft_image.shape[0]])
        r_1 = np.array([x1_1, x2_1, self.norm_ft_image.shape[0], 0])
        if np.abs(y_org) > 3 * np.max(self.binary_map.shape):
            # c_1 = np.array([Y1_1, Y2_1, self.norm_ft_image.shape[1], 0])
            c_1 = np.array([y1_1, y2_1, self.norm_ft_image.shape[0], 0])
            r_1 = np.array([x1_1, x2_1, 0, 0])
        rr, cc = he.generate_mask(r_1, c_1, self.norm_ft_image.shape)
        mask_1[rr, cc] = 1
        mask_1 = np.flipud(mask_1)

        mask_2 = np.zeros(self.norm_ft_image.shape, dtype=np.uint8)
        c_2 = np.array([y1_2, y2_2, 0, 0])
        r_2 = np.array([x1_2, x2_2, self.norm_ft_image.shape[0], 0])
        if np.abs(y_org) > 3 * np.max(self.binary_map.shape):
            # c_2 = np.array([Y1_2, Y2_2, self.norm_ft_image.shape[1], 0])
            c_2 = np.array([y1_2, y2_2, self.norm_ft_image.shape[0], 0])
            r_2 = np.array([x1_2, x2_2, self.norm_ft_image.shape[0], self.norm_ft_image.shape[0]])
        rr, cc = he.generate_mask(r_2, c_2, self.norm_ft_image.shape)
        mask_2[rr, cc] = 1
        mask_2 = np.flipud(mask_2)

        mask_l = np.logical_and(mask_1, mask_2)
        return mask_l

    def process_map(self):
        self.compute_fft()

        print("Find Dominant directions.....", end="", flush=True)
        t = time.time()
        self.pol, (self.rads, self.angles) = he.topolar(self.norm_ft_image, order=3)
        pol_l = self.pol.shape[1]
        self.pol = np.concatenate((self.pol, self.pol[:, 1:], self.pol[:, 1:]), axis=1)
        self.angles = np.concatenate(
            (self.angles, self.angles[1:] + np.max(self.angles), self.angles[1:] + np.max(self.angles[1:] +
                                                                                          np.max(self.angles))), axis=0)

        if self.smooth:
            self.angles = ndimage.gaussian_filter1d(self.angles, self.sigma)
            self.pol = ndimage.gaussian_filter1d(self.pol, self.sigma)

        self.pol_h = np.array([sum(x) for x in zip(*self.pol)])

        self.peak_indices, _ = find_peaks(self.pol_h,
                                          prominence=(np.max(self.pol_h) - np.min(self.pol_h)) * self.peak_height)

        self.pol = self.pol[:, 0:pol_l]
        self.angles = self.angles[0:pol_l]
        self.pol_h = self.pol_h[0:pol_l]
        self.peak_indices = self.peak_indices[np.logical_and(self.peak_indices >= pol_l - 1,
                                                             self.peak_indices < 2 * pol_l - 2)] - pol_l + 1

        pairs = list()
        # angle_dist_mat = list()
        for aind in self.peak_indices:
            # row = list()
            for bind in self.peak_indices:
                a = self.angles[aind]
                b = self.angles[bind]
                if np.abs(np.pi - he.ang_dist(a, b)) < self.ang_tr:
                    pairs.append([aind, bind])

        if pairs:
            pairs = np.array(pairs)
            pairs = np.unique(np.sort(pairs), axis=0)

        amp = np.max(self.pol_h) - np.min(self.pol_h)
        self.comp = list()
        for p in pairs:
            a = self.pol_h[p[0]]
            b = self.pol_h[p[1]]
            if np.abs(a - b) / amp < self.amp_tr:
                self.comp.append(p)
        print("OK ({0:.2f})".format(time.time() - t))
        print("Found directions.....{}".format(len(self.comp)))

        print("Score map.....", end="", flush=True)
        t = time.time()
        if not self.comp:
            pass
        else:
            diag = 10
            mask_all = np.zeros(self.norm_ft_image.shape)

            min_l = (self.binary_map.shape[0] if self.binary_map.shape[0] < self.binary_map.shape[1] else
                     self.binary_map.shape[1]) / 2 - (self.binary_map.shape[0] if self.binary_map.shape[0] >
                                                                                  self.binary_map.shape[1] else
                                                      self.binary_map.shape[1])
            max_l = (self.binary_map.shape[0] if self.binary_map.shape[0] > self.binary_map.shape[1] else
                     self.binary_map.shape[1]) / 2 + (self.binary_map.shape[0] if self.binary_map.shape[0] >
                                                                                  self.binary_map.shape[1] else
                                                      self.binary_map.shape[1])

            for p in self.comp:
                x1, y1 = he.pol2cart(diag, self.angles[p[0]] + np.pi / 2.0)
                x2, y2 = he.pol2cart(diag, self.angles[p[1]] + np.pi / 2.0)

                x1 = x1 + self.binary_map.shape[0] / 2.0
                x2 = x2 + self.binary_map.shape[0] / 2.0

                y1 = y1 + self.binary_map.shape[1] / 2.0
                y2 = y2 + self.binary_map.shape[1] / 2.0

                a = y2 - y1
                b = x1 - x2
                c = a * x1 + b * y1
                c1 = c + self.par
                c2 = c - self.par

                ######
                X1_l = min_l
                Y1_l = (c - a * X1_l) / b
                X2_l = max_l
                Y2_l = (c - a * X2_l) / b
                ######
                X1 = 0
                Y1 = (c - a * X1) / b
                X2 = self.binary_map.shape[0]
                Y2 = (c - a * X2) / b
                ###
                X1_1 = 0
                Y1_1 = (c1 - a * X1_1) / b
                X2_1 = self.binary_map.shape[0]
                Y2_1 = (c1 - a * X2_1) / b
                ###
                X1_2 = 0
                Y1_2 = (c2 - a * X1_2) / b
                X2_2 = self.binary_map.shape[0]
                Y2_2 = (c2 - a * X2_2) / b
                ###

                Y_org = Y1

                if np.abs(Y_org) > 3 * np.max(self.binary_map.shape):
                    ###
                    Y1_l = min_l
                    X1_l = (c - b * Y1_l) / a
                    Y2_l = max_l
                    X2_l = (c - b * Y2_l) / a
                    ###
                    Y1 = 0
                    X1 = (c - b * Y1) / a
                    Y2 = self.binary_map.shape[1]
                    X2 = (c - b * Y2) / a
                    ###
                    Y1_1 = 0
                    X1_1 = (c1 - b * Y1_1) / a
                    Y2_1 = self.binary_map.shape[1]
                    X2_1 = (c1 - b * Y2_1) / a
                    ###
                    Y1_2 = 0
                    X1_2 = (c2 - b * Y1_2) / a
                    Y2_2 = self.binary_map.shape[1]
                    X2_2 = (c2 - b * Y2_2) / a
                    ###
                if max(X1_l, X2_l) < max(Y1_l, Y2_l):
                    self.lines_long_v.append([X1_l, Y1_l, X2_l, Y2_l])

                else:
                    self.lines_long_h.append([X1_l, Y1_l, X2_l, Y2_l])

                self.lines.append([X1, Y1, X2, Y2])

                mask_l = self.generate_mask(X1_1, Y1_1, X2_1, Y2_1, X1_2, Y1_2, X2_2, Y2_2, Y_org)

                if not np.any(mask_l == 1):
                    mask_l = self.generate_mask(X1_2, Y1_2, X2_2, Y2_2, X1_1, Y1_1, X2_1, Y2_1, Y_org)

                self.part_mask.append(mask_l)
                l_mask_ftimage = self.ft_image * mask_l
                l_mask_iftimage = np.fft.ifft2(l_mask_ftimage)
                self.part_reconstruction.append(np.abs(l_mask_iftimage))
                l_map_scored_good = np.abs(l_mask_iftimage) * (self.binary_map * 1)
                self.part_score.append(l_map_scored_good)

                mask_all = np.logical_or(mask_all, mask_l)
                mask_ftimage_l = self.ft_image * mask_l
                mask_iftimage_l = np.fft.ifft2(mask_ftimage_l)
                sm_l = np.abs(mask_iftimage_l) * (self.binary_map * 1)
                sm_l = sm_l / np.max(sm_l)

            mask_all = np.flipud(mask_all)
            mask_all_inv = np.ones(mask_all.shape)
            mask_all_inv[mask_all == 1] = 0
            print("OK ({0:.2f})".format(time.time() - t))

            self.mask_ft_image = self.ft_image * mask_all
            mask_iftimage = np.fft.ifft2(self.mask_ft_image)

            self.mask_inv_ft_image = self.ft_image * mask_all_inv
            mask_inv_iftimage = np.fft.ifft2(self.mask_inv_ft_image)

            self.map_scored_good = np.abs(mask_iftimage) * (self.binary_map * 1)
            self.map_scored_bad = np.abs(mask_inv_iftimage) * (self.binary_map * 1)

            self.map_scored_diff = self.map_scored_good - self.map_scored_bad

            self.map_split_good_t = np.zeros(self.binary_map.shape)
            self.map_split_good_t[self.map_scored_good > self.map_scored_bad] = 1
            self.map_split_good = np.zeros(self.binary_map.shape)
            self.map_split_good[self.binary_map] = self.map_split_good_t[self.binary_map]

            self.ft_image_split = np.fft.fftshift(np.fft.fft2(self.map_split_good))

    def simple_filter_map(self, tr):
        print("Simple filter map.....", end="", flush=True)
        t = time.time()
        l_map = np.array(np.abs(self.map_scored_good) / np.max(np.abs(self.map_scored_good)))
        self.quality_threshold = tr
        self.analysed_map = self.binary_map.copy()
        self.analysed_map[l_map < self.quality_threshold] = 0.0
        print("OK ({0:.2f})".format(time.time() - t))

    def histogram_filtering(self):
        print("Histogram filter map.....", end="", flush=True)
        t = time.time()
        pixels = np.abs(self.map_scored_good[self.binary_map > 0])

        clf = mixture.GaussianMixture(n_components=2)
        clf.fit(pixels.ravel().reshape(-1, 1))
        self.pixel_quality_gmm = {"means": clf.means_, "weights": clf.weights_, "covariances": clf.covariances_}

        bins, edges = np.histogram(pixels.ravel(), density=True)
        self.pixel_quality_histogram = {"bins": bins, "edges": edges,
                                        "centers": [(a + b) / 2 for a, b in zip(edges[:-1], edges[1:])],
                                        "width": [(a - b) for a, b in zip(edges[:-1], edges[1:])]}

        x = np.arange(np.min(self.pixel_quality_histogram["edges"]), np.max(self.pixel_quality_histogram["edges"]), (
                np.max(self.pixel_quality_histogram["edges"]) - np.min(
            self.pixel_quality_histogram["edges"])) / 1000)
        if self.pixel_quality_gmm["means"][0] < self.pixel_quality_gmm["means"][1]:
            y_b = stats.norm.pdf(x, self.pixel_quality_gmm["means"][0],
                                 math.sqrt(self.pixel_quality_gmm["covariances"][0])) * \
                  self.pixel_quality_gmm["weights"][0]
            y_g = stats.norm.pdf(x, self.pixel_quality_gmm["means"][1],
                                 math.sqrt(self.pixel_quality_gmm["covariances"][1])) * \
                  self.pixel_quality_gmm["weights"][1]
        else:
            y_g = stats.norm.pdf(x, self.pixel_quality_gmm["means"][0],
                                 math.sqrt(self.pixel_quality_gmm["covariances"][0])) * \
                  self.pixel_quality_gmm["weights"][0]
            y_b = stats.norm.pdf(x, self.pixel_quality_gmm["means"][1],
                                 math.sqrt(self.pixel_quality_gmm["covariances"][1])) * \
                  self.pixel_quality_gmm["weights"][1]

        ind = np.argmax(y_g > y_b)
        self.cluster_quality_threshold = x[ind]

        self.analysed_map = self.binary_map.copy()
        self.analysed_map[np.abs(self.map_scored_good) < self.cluster_quality_threshold] = 0.0
        print("OK ({0:.2f})".format(time.time() - t))

    def generate_initial_hypothesis_direction_with_kde(self, lines_long, max_len, bandwidth, cutoff_percent, cell_tr,
                                                       V):
        d_row_ret = []
        slices_ids = []
        slices = []
        cell_hypothesis = []
        lines_hypothesis = []
        kde_hypothesis = []
        kde_hypothesis_cut = []
        slices_dir = []

        for l in lines_long:
            temp_slice = []
            for s in np.arange(-1 * max_len, max_len, 1):
                if V:
                    rr, cc = sk_draw.line(int(round(l[0] + s)), int(round(l[3])), int(round(l[2] + s)),
                                          int(round(l[1])))
                elif not V:
                    rr, cc = sk_draw.line(int(round(l[0])), int(round(l[3] + s)), int(round(l[2])),
                                          int(round(l[1] + s)))

                else:
                    print("ERROR")

                rr_flag = (np.logical_or(rr < 0, rr >= self.analysed_map.shape[1]))
                cc_flag = (np.logical_or(cc < 0, cc >= self.analysed_map.shape[0]))
                flag = np.logical_not(np.logical_or(rr_flag, cc_flag))
                new_row = True
                if np.sum(self.analysed_map[cc[flag], rr[flag]] * 1) > 1:
                    # adavnced hypothesisi generation
                    row = self.analysed_map[cc[flag], rr[flag]] * 1

                    t_row = np.ones(row.shape) - row
                    d_row = ndimage.distance_transform_cdt(t_row)
                    d_row = max_len - d_row
                    d_row = d_row.reshape(-1, 1)
                    # self.d_row_v.append(d_row)
                    d_row_ret.append(d_row)
                    kde = KernelDensity(kernel='gaussian', bandwidth=bandwidth).fit(d_row)
                    # cut the gaps
                    temp_row_full = np.exp(kde.score_samples(d_row))
                    temp_row_cut = temp_row_full.copy()
                    temp_row_cut[temp_row_full < cutoff_percent * min(np.exp(kde.score_samples(d_row)))] = 0

                    l_slice_ids = []
                    pt = 0
                    for i, t in enumerate(temp_row_cut):
                        if t == 0 and pt == 0:
                            pt = t
                        elif pt == 0 and t != 0:
                            ts = []
                            ts.append(i)
                            pt = t
                        elif pt != 0 and t != 0:
                            ts.append(i)
                            pt = t
                        elif t == 0 and pt != 0:
                            l_slice_ids.append(ts)
                            ts = []
                            pt = t

                    cc_f = cc[flag]
                    rr_f = rr[flag]

                    cc_slices = []
                    rr_slices = []

                    for tslice in l_slice_ids:
                        if len(tslice) > cell_tr:
                            cc_s = []
                            rr_s = []
                            for i in tslice:
                                cc_s.append(cc_f[i])
                                rr_s.append(rr_f[i])
                            cc_slices.append(cc_s)
                            rr_slices.append(rr_s)

                            temp_slice.append((cc_slices, rr_slices))

                            slices_ids.append((cc_slices, rr_slices))

                            slices.append((cc_slices, rr_slices))
                            if new_row:

                                cell_hypothesis.append((cc[flag], rr[flag]))
                                if V:
                                    lines_hypothesis.append([l[0] + s, l[1], l[2] + s, l[3]])
                                elif not V:
                                    lines_hypothesis.append([l[0], l[1] + s, l[2], l[3] + s])
                                else:
                                    print("ERROR")
                                kde_hypothesis.append(temp_row_full)
                                kde_hypothesis_cut.append(temp_row_cut)
                                new_row = False

            slices_dir.append(temp_slice)
        return d_row_ret, slices_ids, slices, cell_hypothesis, lines_hypothesis, kde_hypothesis, kde_hypothesis_cut, slices_dir

    def generate_initial_hypothesis_direction_simple(self, lines_long, max_len, padding, cell_tr, V):
        d_row_ret = []
        slices_ids = []
        slices = []
        cell_hypothesis = []
        lines_hypothesis = []
        kde_hypothesis = []
        kde_hypothesis_cut = []
        slices_dir = []

        for l in lines_long:
            temp_slice = []
            for s in np.arange(-1 * max_len, max_len, 1):
                if V:
                    rr, cc = sk_draw.line(int(round(l[0] + s)), int(round(l[3])), int(round(l[2] + s)),
                                          int(round(l[1])))
                elif not V:
                    rr, cc = sk_draw.line(int(round(l[0])), int(round(l[3] + s)), int(round(l[2])),
                                          int(round(l[1] + s)))

                else:
                    print("ERROR")

                rr_flag = (np.logical_or(rr < 0, rr >= self.analysed_map.shape[1]))
                cc_flag = (np.logical_or(cc < 0, cc >= self.analysed_map.shape[0]))
                flag = np.logical_not(np.logical_or(rr_flag, cc_flag))
                new_row = True
                if np.sum(self.analysed_map[cc[flag], rr[flag]] * 1) > 1:
                    # adavnced hypothesisi generation

                    #############################################################
                    row = self.analysed_map[cc[flag], rr[flag]]
                    row.shape = (row.shape[0], 1)
                    temp_row_full = binary_dilation(row, selem=np.ones((padding, padding)))
                    temp_row_full = temp_row_full * 1
                    temp_row_cut = temp_row_full.copy()

                    # t_row = np.ones(row.shape) - row
                    # d_row = ndimage.distance_transform_cdt(t_row)
                    # d_row = max_len - d_row
                    # d_row = d_row.reshape(-1, 1)
                    # # self.d_row_v.append(d_row)
                    # d_row_ret.append(d_row)
                    # kde = KernelDensity(kernel='gaussian', bandwidth=bandwidth).fit(d_row)
                    # # cut the gaps
                    # temp_row_full = np.exp(kde.score_samples(d_row))
                    # temp_row_cut = temp_row_full.copy()
                    # temp_row_cut[temp_row_full < cutoff_percent * min(np.exp(kde.score_samples(d_row)))] = 0
                    #############################################################
                    l_slice_ids = []
                    pt = 0
                    for i, t in enumerate(temp_row_cut):
                        if t == 0 and pt == 0:
                            pt = t
                        elif pt == 0 and t != 0:
                            ts = []
                            ts.append(i)
                            pt = t
                        elif pt != 0 and t != 0:
                            ts.append(i)
                            pt = t
                        elif t == 0 and pt != 0:
                            l_slice_ids.append(ts)
                            ts = []
                            pt = t

                    cc_f = cc[flag]
                    rr_f = rr[flag]

                    cc_slices = []
                    rr_slices = []

                    for tslice in l_slice_ids:
                        if len(tslice) > cell_tr:
                            cc_s = []
                            rr_s = []
                            for i in tslice:
                                cc_s.append(cc_f[i])
                                rr_s.append(rr_f[i])
                            cc_slices.append(cc_s)
                            rr_slices.append(rr_s)

                            temp_slice.append((cc_slices, rr_slices))

                            slices_ids.append((cc_slices, rr_slices))

                            slices.append((cc_slices, rr_slices))
                            if new_row:

                                cell_hypothesis.append((cc[flag], rr[flag]))
                                if V:
                                    lines_hypothesis.append([l[0] + s, l[1], l[2] + s, l[3]])
                                elif not V:
                                    lines_hypothesis.append([l[0], l[1] + s, l[2], l[3] + s])
                                else:
                                    print("ERROR")
                                kde_hypothesis.append(temp_row_full)
                                kde_hypothesis_cut.append(temp_row_cut)
                                new_row = False

            slices_dir.append(temp_slice)
        return d_row_ret, slices_ids, slices, cell_hypothesis, lines_hypothesis, kde_hypothesis, kde_hypothesis_cut, slices_dir

    def generate_initial_hypothesis_with_kde(self):
        print("Generate initial hypothesis with kde.....", end="", flush=True)
        t = time.time()
        max_len = 5000
        bandwidth = 0.00005
        cutoff_percent = 15
        cell_tr = 20  # 5
        self.d_row_v, self.slices_v_ids, self.slices_v, self.cell_hypothesis_v, self.lines_hypothesis_v, self.scored_hypothesis_v, self.scored_hypothesis_v_cut, self.slices_v_dir = self.generate_initial_hypothesis_direction_with_kde(
            self.lines_long_v, max_len, bandwidth, cutoff_percent, cell_tr, True)
        self.d_row_h, self.slices_h_ids, self.slices_h, self.cell_hypothesis_h, self.lines_hypothesis_h, self.scored_hypothesis_h, self.scored_hypothesis_h_cut, self.slices_h_dir = self.generate_initial_hypothesis_direction_with_kde(
            self.lines_long_h, max_len, bandwidth, cutoff_percent, cell_tr, False)
        print("OK ({0:.2f})".format(time.time() - t))

    def generate_initial_hypothesis_simple(self):
        print("Generate initial hypothesis simple.....", end="", flush=True)
        t = time.time()
        max_len = 5000
        padding = 1

        cell_tr = 10  # 5
        self.d_row_v, self.slices_v_ids, self.slices_v, self.cell_hypothesis_v, self.lines_hypothesis_v, self.scored_hypothesis_v, self.scored_hypothesis_v_cut, self.slices_v_dir = self.generate_initial_hypothesis_direction_simple(
            self.lines_long_v, max_len, padding, cell_tr, True)
        self.d_row_h, self.slices_h_ids, self.slices_h, self.cell_hypothesis_h, self.lines_hypothesis_h, self.scored_hypothesis_h, self.scored_hypothesis_h_cut, self.slices_h_dir = self.generate_initial_hypothesis_direction_simple(
            self.lines_long_h, max_len, padding, cell_tr, False)
        print("OK ({0:.2f})".format(time.time() - t))

    def find_walls_flood_filing(self):
        print("Find Walls with flood filing.....", end="", flush=True)
        t = time.time()
        self.labeled_map = np.zeros(self.binary_map.shape)
        id = 2
        for s in self.slices_v_dir:
            local_segments = []
            temp_map = np.zeros(self.binary_map.shape)
            for p in s:
                for q in zip(p[0], p[1]):
                    temp_map[q[0], q[1]] = 1

            temp_map_fill = temp_map.copy()
            filled = False
            while not filled:
                seed = np.argwhere(temp_map_fill == 1)

                if seed.size != 0:
                    temp_map_fill = flood_fill(temp_map_fill, (seed[0][0], seed[0][1]), id)
                    id = id + 1
                else:
                    filled = True

                local_segment = sh.Segment()
                cluster = np.where(temp_map_fill == id - 1)
                cluster = np.column_stack((cluster[0], cluster[1]))
                local_segment.add_cells(cluster)
                local_segment.compute_hull()
                local_segment.compute_mbb()
                local_segment.id = id
                local_segments.append(local_segment)
            self.segments_v.append(local_segments)
            self.labeled_map = self.labeled_map + temp_map_fill
            local_mbb_lines = []
            for l_segment in local_segments:
                x1, y1 = l_segment.center
                x2, y2 = l_segment.center[0] + l_segment.rectangle_direction[0], l_segment.center[1] + \
                         l_segment.rectangle_direction[1]
                a = y2 - y1
                b = x1 - x2
                c = a * (x1) + b * (y1)
                if not b == 0:
                    X1 = 0
                    Y1 = (c - a * X1) / b
                    X2 = self.binary_map.shape[0]
                    Y2 = (c - a * X2) / b
                if np.abs(Y1) > 3 * np.max(self.binary_map.shape) or b == 0:
                    ###
                    Y1 = 0
                    X1 = (c - b * Y1) / a
                    Y2 = self.binary_map.shape[1]
                    X2 = (c - b * Y2) / a
                    ###
                local_mbb_lines.append({"X1": X1, "X2": X2, "Y1": Y1, "Y2": Y2})
                self.all_lines.append(((X1, Y1), (X2, Y2)))
            self.segments_v_mbb_lines.append(local_mbb_lines)

        for s in self.slices_h_dir:
            local_segments = []
            temp_map = np.zeros(self.binary_map.shape)
            for p in s:
                for q in zip(p[0], p[1]):
                    temp_map[q[0], q[1]] = 1
            temp_map_fill = temp_map.copy()
            filled = False
            while not filled:
                seed = np.argwhere(temp_map_fill == 1)
                if seed.size != 0:
                    temp_map_fill = flood_fill(temp_map_fill, (seed[0][0], seed[0][1]), id)
                    id = id + 1
                else:
                    filled = True
                local_segment = sh.Segment()
                cluster = np.where(temp_map_fill == id - 1)
                cluster = np.column_stack((cluster[0], cluster[1]))
                local_segment.add_cells(cluster)
                local_segment.compute_hull()
                local_segment.compute_mbb()
                local_segment.id = id
                local_segments.append(local_segment)
            self.segments_h.append(local_segments)
            self.labeled_map = self.labeled_map + temp_map_fill
            local_mbb_lines = []
            for l_segment in local_segments:
                x1, y1 = l_segment.center
                x2, y2 = l_segment.center[0] + l_segment.rectangle_direction[0], l_segment.center[1] + \
                         l_segment.rectangle_direction[1]
                a = y2 - y1
                b = x1 - x2
                c = a * (x1) + b * (y1)
                if not b == 0:
                    X1 = 0
                    Y1 = (c - a * X1) / b
                    X2 = self.binary_map.shape[0]
                    Y2 = (c - a * X2) / b
                if np.abs(Y1) > 3 * np.max(self.binary_map.shape) or b == 0:
                    ###
                    Y1 = 0
                    X1 = (c - b * Y1) / a
                    Y2 = self.binary_map.shape[1]
                    X2 = (c - b * Y2) / a
                    ###
                local_mbb_lines.append({"X1": X1, "X2": X2, "Y1": Y1, "Y2": Y2})
                self.all_lines.append(((X1, Y1), (X2, Y2)))
            self.segments_h_mbb_lines.append(local_mbb_lines)
        self.all_lines = list(dict.fromkeys(self.all_lines))
        print("OK ({0:.2f})".format(time.time() - t))

    def find_walls_with_line_segments(self):
        print("Find Walls with line segment clustering.....", end="", flush=True)
        t = time.time()
        eps = 10
        min_samples = 2
        if len(self.slices_h_dir) is not 0:
            for direction in self.slices_h_dir:
                slice_lines = generate_line_segments_per_direction(direction)
                clustering_h = DBSCAN(eps=eps, min_samples=min_samples,
                                      metric=he.shortest_distance_between_segements).fit(
                    slice_lines)
                self.slice_h_lines.append(slice_lines)
                self.clustering_h_labels.append(clustering_h.labels_)

        if len(self.slices_v_dir) is not 0:
            for direction in self.slices_v_dir:
                slice_lines = generate_line_segments_per_direction(direction)
                clustering_v = DBSCAN(eps=eps, min_samples=min_samples,
                                      metric=he.shortest_distance_between_segements).fit(
                    slice_lines)
                self.slice_v_lines.append(slice_lines)
                self.clustering_v_labels.append(clustering_v.labels_)

        id = 2
        temp_map = np.zeros(self.binary_map.shape)

        last_label = 0
        for slice, label in zip(self.slices_h_dir, self.clustering_h_labels):
            if last_label != label:
                id = id + 1
            for s in zip(slice[0][0], slice[1][0]):
                temp_map[s[0]][s[1]] = id
            last_label = label
        last_label = 0
        for slice, label in zip(self.slices_v_dir, self.clustering_v_labels):
            if last_label != label:
                id = id + 1
            for s in zip(slice[0][0], slice[1][0]):
                temp_map[s[0]][s[1]] = id
            last_label = label
        self.labeled_map_line_segment = temp_map
        print("OK ({0:.2f})".format(time.time() - t))

    # output
    ###########################
    def report(self):
        for p in self.comp:
            print("dir:", self.angles[p[0]] * 180.0 / np.pi, self.angles[p[1]] * 180.0 / np.pi)

    def show(self, visualisation, path, shape, format='.png'):
        print("Generating visualisation.....", end="", flush=True)
        t = time.time()

        if visualisation["Binary map"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(self.binary_map * 1, cmap="gray")
            ax.axis("off")
            name = "Binary Map"
            ax.set_title(name)
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["FFT Spectrum"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow((np.abs(self.ft_image)), cmap="nipy_spectral")
            ax.axis("off")
            name = "FFT Spectrum"
            ax.set_title(name)
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["FFT spectrum with directions"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow((np.abs(self.ft_image)), cmap="nipy_spectral")
            for l in self.lines:
                ax.plot([l[1], l[3]], [l[0], l[2]])
            ax.axis("off")
            name = "FFT Spectrum with directions"
            ax.set_title(name)
            fig.canvas.set_window_title(name)
            ax.set_xlim(0, self.ft_image.shape[1])
            ax.set_ylim(0, self.ft_image.shape[0])
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Map with walls"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(self.binary_map, cmap="gray")
            for indices_slice in self.slices_v_ids:
                for indices in zip(indices_slice[0], indices_slice[1]):
                    for i in zip(indices[0], indices[1]):
                        ax.plot(i[1], i[0], 'rx')
            for indices_slice in self.slices_h_ids:
                for indices in zip(indices_slice[0], indices_slice[1]):
                    for i in zip(indices[0], indices[1]):
                        ax.plot(i[1], i[0], 'rx')
            ax.axis("off")
            name = "Map with walls"
            ax.set_title(name)
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Map with directions"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(self.binary_map, cmap="gray")
            for line in self.lines_hypothesis_v:
                ax.plot([line[0], line[2]], [line[3], line[1]], alpha=0.5)
            for line in self.lines_hypothesis_h:
                ax.plot([line[0], line[2]], [line[3], line[1]], alpha=0.5)
            for cells, values in zip(self.cell_hypothesis_v, self.scored_hypothesis_v):
                ax.scatter(cells[1], cells[0], c='r', s=values * 100, alpha=0.5)
            for cells, values in zip(self.cell_hypothesis_h, self.scored_hypothesis_h):
                ax.scatter(cells[1], cells[0], c='r', s=values * 100, alpha=0.5)
            for cells, values in zip(self.cell_hypothesis_v, self.scored_hypothesis_v_cut):
                ax.scatter(cells[1], cells[0], c='g', s=values * 100, alpha=0.5)
            for cells, values in zip(self.cell_hypothesis_h, self.scored_hypothesis_h_cut):
                ax.scatter(cells[1], cells[0], c='g', s=values * 100, alpha=0.5)
            ax.axis("off")
            name = "Map with directions"
            ax.set_title(name)
            fig.canvas.set_window_title(name)
            ax.set_xlim(0, self.binary_map.shape[1])
            ax.set_ylim(self.binary_map.shape[0], 0)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Unfolded FFT Spectrum"]:
            fig, ax = plt.subplots(1, 1)
            ax.imshow(np.flipud(self.pol), cmap="nipy_spectral", aspect='auto',
                      extent=(np.min(self.angles), np.max(self.angles), 0, np.max(self.rads)))
            ax.set_xlim([np.min(self.angles), np.max(self.angles)])
            ax.set_xlabel("Orientation [rad]")
            ax.set_ylabel("Radius in pixel")
            ax2 = ax.twinx()
            ax2.plot(self.angles, self.pol_h)
            ax2.plot(self.angles[self.peak_indices], self.pol_h[self.peak_indices], 'r+')
            for p in self.comp:
                ax2.scatter(self.angles[p], self.pol_h[p], marker='^', s=120)
            ax2.set_ylabel("Orientation score")
            name = "Unfolded FFT Spectrum"
            ax.set_title(name)
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["FFT Spectrum Signal"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow((np.abs(self.mask_ft_image)), cmap="nipy_spectral")
            ax.axis("off")
            name = "FFT Spectrum Signal"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["FFT Spectrum Noise"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow((np.abs(self.mask_inv_ft_image)), cmap="nipy_spectral")
            ax.axis("off")
            name = "FFT Spectrum Noise"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Map Scored Good"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(np.abs(self.map_scored_good), cmap="plasma")
            ax.axis("off")
            name = "Map Scored Good"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Map Scored Bad"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(np.abs(self.map_scored_bad), cmap="plasma")
            ax.axis("off")
            name = "Map Scored Bad"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Map Scored Diff"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(np.abs(self.map_scored_diff), cmap="plasma")
            ax.axis("off")
            name = "Map Scored Diff"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Map Split Good"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(self.map_split_good, cmap="plasma")
            ax.axis("off")
            name = "Map Split Good"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["FFT Map Split Good"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow((np.abs(self.ft_image_split)), cmap="nipy_spectral")
            ax.axis("off")
            name = "FFT Map Split Good"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Side by Side"]:
            fig, ax = plt.subplots(nrows=1, ncols=2, sharex=True, sharey=True)
            ax[0].imshow(self.binary_map * 1, cmap="gray")
            ax[0].axis("off")
            ax[1].imshow(np.abs(self.map_scored_good), cmap="nipy_spectral")
            ax[1].axis("off")
            name1 = "Map"
            name2 = "Score"
            fig.canvas.set_window_title("Map Quality assessment")
            ax[0].set_title(name1)
            ax[1].set_title(name2)
            plt.tight_layout()
            plt.subplots_adjust(left=0.0, right=1.0, top=1.0, bottom=0, wspace=0, hspace=0)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Simple Filtered Map"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(self.binary_map, cmap="gray")
            non_zero_ind = np.nonzero(self.analysed_map)
            for ind in zip(non_zero_ind[0], non_zero_ind[1]):
                square = patches.Rectangle((ind[1], ind[0]), 1, 1, color='green')
                ax.add_patch(square)
            name = "Simple Filtered Map (" + str(self.quality_threshold) + ")"
            ax.axis("off")
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Threshold Setup with Clusters"]:
            x = np.arange(np.min(self.pixel_quality_histogram["edges"]), np.max(self.pixel_quality_histogram["edges"]),
                          (np.max(self.pixel_quality_histogram["edges"]) - np.min(
                              self.pixel_quality_histogram["edges"])) / 1000)

            if self.pixel_quality_gmm["means"][0] < self.pixel_quality_gmm["means"][1]:
                y_b = stats.norm.pdf(x, self.pixel_quality_gmm["means"][0],
                                     math.sqrt(self.pixel_quality_gmm["covariances"][0])) * \
                      self.pixel_quality_gmm["weights"][0]
                y_g = stats.norm.pdf(x, self.pixel_quality_gmm["means"][1],
                                     math.sqrt(self.pixel_quality_gmm["covariances"][1])) * \
                      self.pixel_quality_gmm["weights"][1]
            else:
                y_g = stats.norm.pdf(x, self.pixel_quality_gmm["means"][0],
                                     math.sqrt(self.pixel_quality_gmm["covariances"][0])) * \
                      self.pixel_quality_gmm["weights"][0]
                y_b = stats.norm.pdf(x, self.pixel_quality_gmm["means"][1],
                                     math.sqrt(self.pixel_quality_gmm["covariances"][1])) * \
                      self.pixel_quality_gmm["weights"][1]

            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.bar(self.pixel_quality_histogram["centers"], self.pixel_quality_histogram["bins"],
                   width=self.pixel_quality_histogram["width"])
            ax.plot(x, y_b, 'r')
            ax.plot(x, y_g, 'g')
            ax.axvline(x=self.cluster_quality_threshold, color='y')
            name = "Treshold Setup with Clusters"
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Cluster Filtered Map"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(self.binary_map, cmap="gray")
            non_zero_ind = np.nonzero(self.analysed_map)
            for ind in zip(non_zero_ind[0], non_zero_ind[1]):
                square = patches.Rectangle((ind[1], ind[0]), 1, 1, color='green')
                ax.add_patch(square)
            name = "Cluster Filtered Map (" + str(self.cluster_quality_threshold) + ")"
            ax.axis("off")
            fig.canvas.set_window_title(name)
            ax.set_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Map with slices"]:
            fig, ax = plt.subplots(nrows=1, ncols=1)
            ax.imshow(self.binary_map, cmap="gray")
            for l in self.slices_v:
                for s in zip(l[0], l[1]):
                    ax.plot(s[1], s[0], '.')
            for l in self.slices_h:
                for s in zip(l[0], l[1]):
                    ax.plot(s[1], s[0], '.')
            ax.axis("off")
            name = "Map with slices"
            ax.set_title(name)
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Partial Scores"]:
            co = len(self.part_score)
            if co > 1:
                if co > 2:
                    div = he.proper_divs2(int(co))
                    if len(div) is 1:
                        co = co + 1
                        div = he.proper_divs2(int(co))
                    div.add(int(co))
                    div = list(div)
                    div.sort()
                    if len(div) % 2 == 0:
                        nrows = div[int(len(div) / 2) - 1]
                        ncols = div[int(len(div) / 2)]
                    else:
                        nrows = div[int(len(div) / 2)]
                        ncols = div[int(len(div) / 2)]
                else:
                    nrows = 1
                    ncols = int(co)
                fig, ax = plt.subplots(nrows=nrows, ncols=ncols, sharex=True, sharey=True)
                i = 0
                for p in self.part_score:
                    ax[int(i / ncols)][int(i % ncols)].imshow(p)
                    ax[int(i / ncols)][int(i % ncols)].axis('off')
                    i = i + 1
                name = "Partial Scores"
                fig.canvas.set_window_title(name)
                title = os.path.join(path, name + format)
                plt.savefig(title)
            elif co == 1:
                fig, ax = plt.subplots(nrows=1, ncols=1, sharex=True, sharey=True)
                ax.imshow(self.part_score[0])
                ax.axis('off')
                name = "Partial Scores"
                fig.canvas.set_window_title(name)
                title = os.path.join(path, name + format)
                plt.savefig(title)

        if visualisation["Partial Reconstructs"]:
            co = len(self.part_reconstruction)
            if co > 1:
                if co > 2:
                    div = he.proper_divs2(int(co))
                    if len(div) is 1:
                        co = co + 1
                        div = he.proper_divs2(int(co))
                    div.add(int(co))
                    div = list(div)
                    div.sort()
                    if len(div) % 2 == 0:
                        nrows = div[int(len(div) / 2) - 1]
                        ncols = div[int(len(div) / 2)]
                    else:
                        nrows = div[int(len(div) / 2)]
                        ncols = div[int(len(div) / 2)]
                else:
                    nrows = 1
                    ncols = int(co)
                fig, ax = plt.subplots(nrows=nrows, ncols=ncols, sharex=True, sharey=True)
                i = 0
                for p in self.part_reconstruction:
                    ax[int(i / ncols)][int(i % ncols)].imshow(p)
                    ax[int(i / ncols)][int(i % ncols)].axis('off')
                    i = i + 1
                name = "Partial Reconstruct"
                fig.canvas.set_window_title(name)
                title = os.path.join(path, name + format)
                plt.savefig(title)
            elif co == 1:
                fig, ax = plt.subplots(nrows=1, ncols=1, sharex=True, sharey=True)
                ax.imshow(self.part_reconstruction[0])
                ax.axis('off')
                name = "Partial Reconstruct"
                fig.canvas.set_window_title(name)
                title = os.path.join(path, name + format)
                plt.savefig(title)

        if visualisation["Wall lines from mbb"]:
            cmap = plt.cm.get_cmap("tab10")
            cmap.set_under("black")
            cmap.set_over("yellow")
            fig, ax = plt.subplots(nrows=1, ncols=1, sharey=True, sharex=True)
            ax.imshow(self.labeled_map, cmap=cmap, vmin=1)
            for local_segments, local_mbb_lines in zip(self.segments_h, self.segments_h_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
                    if l_segment.mbb_area > 10:
                        ax.plot([l_mbb_lines["Y1"], l_mbb_lines["Y2"]], [l_mbb_lines["X1"], l_mbb_lines["X2"]], 'g')
            for local_segments, local_mbb_lines in zip(self.segments_v, self.segments_v_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
                    if l_segment.mbb_area > 10:
                        ax.plot([l_mbb_lines["Y1"], l_mbb_lines["Y2"]], [l_mbb_lines["X1"], l_mbb_lines["X2"]], 'g')
            ax.set_xlim(0, self.binary_map.shape[1])
            ax.set_ylim(self.binary_map.shape[0], 0)
            ax.axis("off")
            name = "Wall lines from mbb"
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Short wall lines from mbb"]:
            cmap = plt.cm.get_cmap("tab10")
            cmap.set_under("black")
            cmap.set_over("yellow")
            fig, ax = plt.subplots(nrows=1, ncols=1, sharey=True, sharex=True)
            # ax[0].imshow(temp_map)
            ax.imshow(self.labeled_map, cmap=cmap, vmin=1)
            for local_segments, local_mbb_lines in zip(self.segments_h, self.segments_h_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
                    wall=he.cetral_line(l_segment.minimal_bounding_box)
                    ax.plot([wall[0].y, wall[1].y], [wall[0].x, wall[1].x], 'c')
                    #if l_segment.mbb_area > 10:
                        #ax.plot([l_mbb_lines["Y1"], l_mbb_lines["Y2"]], [l_mbb_lines["X1"], l_mbb_lines["X2"]], 'g')
            for local_segments, local_mbb_lines in zip(self.segments_v, self.segments_v_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
                    wall = he.cetral_line(l_segment.minimal_bounding_box)
                    ax.plot([wall[0].y, wall[1].y], [wall[0].x, wall[1].x], 'c')
                    #if l_segment.mbb_area > 10:
                        #ax.plot([l_mbb_lines["Y1"], l_mbb_lines["Y2"]], [l_mbb_lines["X1"], l_mbb_lines["X2"]], 'g')
            ax.set_xlim(0, self.binary_map.shape[1])
            ax.set_ylim(self.binary_map.shape[0], 0)
            ax.axis("off")
            name = "Short wall lines from mbb"
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Short wall lines over original map"]:
            fig, ax = plt.subplots(nrows=1, ncols=1, sharey=True, sharex=True)
            ax.imshow(self.binary_map, cmap="gray")
            for local_segments, local_mbb_lines in zip(self.segments_h, self.segments_h_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
                    wall = he.cetral_line(l_segment.minimal_bounding_box)
                    ax.plot([wall[0].y, wall[1].y], [wall[0].x, wall[1].x], 'c')
                    # if l_segment.mbb_area > 10:
                    # ax.plot([l_mbb_lines["Y1"], l_mbb_lines["Y2"]], [l_mbb_lines["X1"], l_mbb_lines["X2"]], 'g')
            for local_segments, local_mbb_lines in zip(self.segments_v, self.segments_v_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
                    wall = he.cetral_line(l_segment.minimal_bounding_box)
                    ax.plot([wall[0].y, wall[1].y], [wall[0].x, wall[1].x], 'c')
                    # if l_segment.mbb_area > 10:
                    # ax.plot([l_mbb_lines["Y1"], l_mbb_lines["Y2"]], [l_mbb_lines["X1"], l_mbb_lines["X2"]], 'g')
            ax.set_xlim(0, self.binary_map.shape[1])
            ax.set_ylim(self.binary_map.shape[0], 0)
            ax.axis("off")
            name = "Short wall lines over original map"
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Labels and Raw map"]:
            cmap = plt.cm.get_cmap("tab10")
            cmap.set_under("black")
            cmap.set_over("yellow")
            fig, ax = plt.subplots(nrows=1, ncols=1, sharey=True, sharex=True)
            ax.imshow(self.labeled_map, cmap=cmap, vmin=1)
            ax.imshow(self.binary_map, cmap="gray", alpha=0.5)
            for local_segments, local_mbb_lines in zip(self.segments_h, self.segments_h_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
            for local_segments, local_mbb_lines in zip(self.segments_v, self.segments_v_mbb_lines):
                for l_segment, l_mbb_lines in zip(local_segments, local_mbb_lines):
                    ax.plot(l_segment.minimal_bounding_box[:, 1], l_segment.minimal_bounding_box[:, 0], 'r')
            ax.set_xlim(0, self.binary_map.shape[1])
            ax.set_ylim(self.binary_map.shape[0], 0)
            ax.axis("off")
            name = "Labels and Raw map"
            fig.canvas.set_window_title(name)
            title = os.path.join(path, name + format)
            plt.savefig(title)

        if visualisation["Raw line segments"]:
            fig, ax = plt.subplots(nrows=1, ncols=1, sharey=True, sharex=True)
            ax.imshow(self.binary_map, cmap="gray")
            for segment in self.slice_v_lines:
                ax.plot([segment[1], segment[3]], [segment[0], segment[2]])

            for segment in self.slice_h_lines:
                ax.plot([segment[1], segment[3]], [segment[0], segment[2]])

            name = "Raw line segments"
            fig.canvas.set_window_title(name)

            title = os.path.join(path, name + format)
            plt.savefig(title)

        print("OK ({0:.2f})".format(time.time() - t))
