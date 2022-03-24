import matplotlib.pyplot as plt
import numpy as np
from scipy.ndimage.interpolation import geometric_transform
from scipy.signal import fftconvolve
from skimage.draw import polygon
import math
import sys
from shapely.geometry import LineString


def is_between(a, b, c):
    crossproduct = (c[1] - a[1]) * (b[0] - a[0]) - (c[0] - a[0]) * (b[1] - a[1])
    # compare versus epsilon for floating point values, or != 0 if using integers
    if abs(crossproduct) > sys.float_info.epsilon * 100:
        return False
    dotproduct = (c[0] - a[0]) * (b[0] - a[0]) + (c[1] - a[1]) * (b[1] - a[1])
    if dotproduct < 0:
        return False
    squaredlengthba = (b[0] - a[0]) * (b[0] - a[0]) + (b[1] - a[1]) * (b[1] - a[1])
    if dotproduct > squaredlengthba:
        return False
    return True


def cart2pol(x, y):
    rho = np.sqrt(x ** 2 + y ** 2)
    phi = np.arctan2(y, x)
    return (rho, phi)


def pol2cart(rho, phi):
    x = rho * np.cos(phi)
    y = rho * np.sin(phi)
    return (x, y)


def normxcorr2(template, image, mode="full"):
    ########################################################################################
    # Author: Ujash Joshi, University of Toronto, 2017                                     #
    # Based on Octave implementation by: Benjamin Eltzner, 2014 <b.eltzner@gmx.de>         #
    # Octave/Matlab normxcorr2 implementation in python 3.5                                #
    # Details:                                                                             #
    # Normalized cross-correlation. Similiar results upto 3 significant digits.            #
    # https://github.com/Sabrewarrior/normxcorr2-python/master/norxcorr2.py                #
    # http://lordsabre.blogspot.ca/2017/09/matlab-normxcorr2-implemented-in-python.html    #
    ########################################################################################

    """
    Input arrays should be floating point numbers.
    :param template: N-D array, of template or filter you are using for cross-correlation.
    Must be less or equal dimensions to image.
    Length of each dimension must be less than length of image.
    :param image: N-D array
    :param mode: Options, "full", "valid", "same"
    full (Default): The output of fftconvolve is the full discrete linear convolution of the inputs.
    Output size will be image size + 1/2 template size in each dimension.
    valid: The output consists only of those elements that do not rely on the zero-padding.
    same: The output is the same size as image, centered with respect to the 'full' output.
    :return: N-D array of same dimensions as image. Size depends on mode parameter.
    """

    # If this happens, it is probably a mistake
    if np.ndim(template) > np.ndim(image) or \
            len([i for i in range(np.ndim(template)) if template.shape[i] > image.shape[i]]) > 0:
        print("normxcorr2: TEMPLATE larger than IMG. Arguments may be swapped.")

    template = template - np.mean(template)
    image = image - np.mean(image)

    a1 = np.ones(template.shape)
    # Faster to flip up down and left right then use fftconvolve instead of scipy's correlate
    ar = np.flipud(np.fliplr(template))
    out = fftconvolve(image, ar.conj(), mode=mode)

    image = fftconvolve(np.square(image), a1, mode=mode) - \
            np.square(fftconvolve(image, a1, mode=mode)) / (np.prod(template.shape))

    # Remove small machine precision errors after subtraction
    image[np.where(image < 0)] = 0

    template = np.sum(np.square(template))
    out = out / np.sqrt(image * template)

    # Remove any divisions by 0 or very close to 0
    out[np.where(np.logical_not(np.isfinite(out)))] = 0

    return out


def fft_structure(binary_map, tr):
    ftimage = np.fft.fft2(binary_map * 255)
    ftimage = np.fft.fftshift(ftimage)

    flat_ftimage = np.abs(ftimage.flatten())

    flat_ftimage = np.sort(flat_ftimage)
    flat_ftimage = np.flip(flat_ftimage)

    tr_id = int(len(flat_ftimage) * tr)
    tr = flat_ftimage[tr_id]
    ftimage[np.abs(ftimage) < tr] = 0.0

    fig, ax = plt.subplots(nrows=1, ncols=1, sharex=True, sharey=True)
    ax.plot(flat_ftimage, range(len(flat_ftimage)), '.')
    ax.axvline(x=tr_id)
    plt.show()
    return ftimage


def structure_map(fft, binary_map, per):
    iftimage = np.fft.ifft2(fft)
    domin = abs(iftimage) / np.max(abs(iftimage))
    fft_map = np.zeros(binary_map.shape)
    fft_map[binary_map] = domin[binary_map]
    ft_v = fft_map.flatten()
    ft_v = ft_v[ft_v > 0]
    tr = np.percentile(ft_v, per)
    tr_fft_map = np.zeros(fft_map.shape)
    tr_fft_map[fft_map > tr] = 1
    return fft_map, tr_fft_map


def topolar(img, order=1):
    """
    Transform img to its polar coordinate representation.

    order: int, default 1
        Specify the spline interpolation order.
        High orders may be slow for large images.
    """
    # max_radius is the length of the diagonal
    # from a corner to the mid-point of img.
    max_radius = 0.5 * np.linalg.norm(img.shape)

    def transform(coords):
        # Put coord[1] in the interval, [-pi, pi]
        theta = 2 * np.pi * coords[1] / (img.shape[1] - 1.)

        # Then map it to the interval [0, max_radius].
        # radius = float(img.shape[0]-coords[0]) / img.shape[0] * max_radius
        radius = max_radius * coords[0] / img.shape[0]

        i = 0.5 * img.shape[0] - radius * np.sin(theta)
        j = radius * np.cos(theta) + 0.5 * img.shape[1]
        return i, j

    polar = geometric_transform(img, transform, order=order)

    rads = max_radius * np.linspace(0, 1, img.shape[0])
    angs = np.linspace(0, 2 * np.pi, img.shape[1])

    return polar, (rads, angs)


def ang_dist(a, b):
    phi = np.abs(a - b) % (2 * np.pi)
    dist = (2 * np.pi - phi) if phi > np.pi else phi
    return dist


def line_intersection(line1, line2):
    xdiff = (line1[0][0] - line1[1][0], line2[0][0] - line2[1][0])
    ydiff = (line1[0][1] - line1[1][1], line2[0][1] - line2[1][1])

    def det(a, b):
        return a[0] * b[1] - a[1] * b[0]

    div = det(xdiff, ydiff)
    if div == 0:
        return np.nan, np.nan

    d = (det(*line1), det(*line2))
    x = det(d, xdiff) / div
    y = det(d, ydiff) / div
    return x, y


def find_nearest(array, value):
    array = np.asarray(array)
    idx = (np.abs(array - value)).argmin()
    return array[idx], idx


def generate_mask(r, c, s):
    rr, cc = polygon(r, c)
    rm_rr_1 = rr < s[0]
    rm_rr_2 = rr >= 0
    rm_rr = np.logical_and(rm_rr_1, rm_rr_2)
    rr = rr[rm_rr]
    cc = cc[rm_rr]
    rm_cc_1 = cc < s[1]
    rm_cc_2 = cc >= 0
    rm_cc = np.logical_and(rm_cc_1, rm_cc_2)
    rr = rr[rm_cc]
    cc = cc[rm_cc]
    return rr, cc


def proper_divs2(n):
    return {x for x in range(1, (n + 1) // 2 + 1) if n % x == 0 and n != x}


def dot(v, w):
    x, y = v
    X, Y = w
    return x * X + y * Y


def length(v):
    x, y = v
    return math.sqrt(x * x + y * y)


def vector(b, e):
    x, y = b
    X, Y = e
    return X - x, Y - y


def unit(v):
    x, y = v
    mag = length(v)
    return (x / mag, y / mag)


def distance(p0, p1):
    return length(vector(p0, p1))


def scale(v, sc):
    x, y = v
    return (x * sc, y * sc)


def add(v, w):
    x, y = v
    X, Y = w
    return (x + X, y + Y,)


# Given a line with coordinates 'start' and 'end' and the
# coordinates of a point 'pnt' the proc returns the shortest
# distance from pnt to the line and the coordinates of the
# nearest point on the line.
#
# 1  Convert the line segment to a vector ('line_vec').
# 2  Create a vector connecting start to pnt ('pnt_vec').
# 3  Find the length of the line vector ('line_len').
# 4  Convert line_vec to a unit vector ('line_unitvec').
# 5  Scale pnt_vec by line_len ('pnt_vec_scaled').
# 6  Get the dot product of line_unitvec and pnt_vec_scaled ('t').
# 7  Ensure t is in the range 0 to 1.
# 8  Use t to get the nearest location on the line to the end
#    of vector pnt_vec_scaled ('nearest').
# 9  Calculate the distance from nearest to pnt_vec_scaled.
# 10 Translate nearest back to the start/end line.
# Malcolm Kesson 16 Dec 2012

def closest_point_on_line(start, end, pnt):
    line_vec = vector(start, end)
    pnt_vec = vector(start, pnt)
    line_len = length(line_vec)
    line_unitvec = unit(line_vec)
    pnt_vec_scaled = scale(pnt_vec, 1.0 / line_len)
    t = dot(line_unitvec, pnt_vec_scaled)
    if t < 0.0:
        t = 0.0
    elif t > 1.0:
        t = 1.0
    nearest = scale(line_vec, t)
    dist = distance(nearest, pnt_vec)
    nearest = add(nearest, start)
    return dist, nearest


def segment_interesction(segment1, segment2):
    x, y = line_intersection(segment1, segment2)
    if is_between([segment1[0][0], segment1[0][1]], [segment1[1][0], segment1[1][1]], [x, y]):
        return x, y
    else:
        return np.nan, np.nan


def shortest_distance_between_segements(s1, s2):
    x, y = segment_interesction([[s1[0], s1[1]], [s1[2], s1[3]]], [[s2[0], s2[1]], [s2[2], s2[3]]])
    dist = np.inf

    if x is np.nan and y is np.nan:
        dist_n, _ = closest_point_on_line([s1[0], s1[1]], [s1[2], s1[3]], [s2[0], s2[1]])
        if dist_n < dist:
            dist = dist_n
        dist_n, _ = closest_point_on_line([s1[0], s1[1]], [s1[2], s1[3]], [s2[2], s2[3]])
        if dist_n < dist:
            dist = dist_n
        dist_n, _ = closest_point_on_line([s2[0], s2[1]], [s2[2], s2[3]], [s1[0], s1[1]])
        if dist_n < dist:
            dist = dist_n
        dist_n, _ = closest_point_on_line([s2[0], s2[1]], [s2[2], s2[3]], [s1[2], s1[3]])
        if dist_n < dist:
            dist = dist_n

    else:
        dist = 0
    return dist


def cetral_line(points):
    edges_1 = [LineString([points[0], points[1]]), LineString([points[2], points[3]])]
    edges_2 = [LineString([points[1], points[2]]), LineString([points[3], points[4]])]
    if edges_1[0].length<edges_2[0].length:
        return (edges_1[0].interpolate(0.5, normalized=True), edges_1[1].interpolate(0.5, normalized=True))
    else:
        return (edges_2[0].interpolate(0.5, normalized=True), edges_2[1].interpolate(0.5, normalized=True))
