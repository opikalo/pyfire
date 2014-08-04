""" helper utility to work with global map / map layout"""

import os

import numpy
import matplotlib.pyplot as plt
import networkx as nx
from scipy.misc import imread

from utils import root

def plot_map():
    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'map.png')

    img = imread(filename)

    fig = plt.figure()
    ax = fig.gca()
    
    ax.set_xticks(numpy.arange(0,2800, 100))
    ax.set_yticks(numpy.arange(0,2800, 100))
    plt.grid()

    plt.imshow(img,zorder=0)


if __name__ == '__main__':
    plot_map()
    plt.show()
