""" helper utility to work with global map / map layout"""

import os

import numpy
import matplotlib.pyplot as plt
import networkx as nx
from scipy.misc import imread

from utils import root

def plot_map():
    """ Older utility, new stuff should use GlobalMap.plot() """

    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'map.png')

    img = imread(filename)

    fig = plt.figure(1)
    ax = fig.gca()
    
    ax.set_xticks(numpy.arange(0,2800, 100))
    ax.set_yticks(numpy.arange(0,2800, 100))
    plt.grid()

    plt.imshow(img,zorder=0)


DEFAULT_COLOR = (255, 255, 255, 0)
GREEN_COLOR = (0, 128, 0, 255)
RED_COLOR = (255, 0, 0, 255)
BLUE_COLOR = (0, 0, 255, 255)

MIN_UNCONTRAINED_PENALTY = 1


COLLISION_PENALTY = {
    DEFAULT_COLOR: MIN_UNCONTRAINED_PENALTY,
    GREEN_COLOR: 10,
    RED_COLOR: 100,
    BLUE_COLOR: 1000
}

#TODO: figure out why we have other colors
OTHER_PENALTY = 10

class GlobalMap(object):
    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'map.png')
    data = imread(filename)

    def __init__(self): 
        pass

    def plot(self):
        plt.close("all")
        fig = plt.figure()
        ax = fig.gca()
    
        ax.set_xticks(numpy.arange(0,2800, 100))
        ax.set_yticks(numpy.arange(0,2800, 100))
        plt.grid()

        plt.imshow(GlobalMap.data, zorder=0)


    def check_collision(self, pos):
        """ Helper utility to check for collisions. 
        Returns penalty for several types of collision """
        
        
        d = DEFAULT_COLOR

        try:
            #interesting, x,y seem to be swapped for image data
            d = GlobalMap.data[pos[1]][pos[0]]
        except IndexError:
            #out of bounds for bitmap
            pass

        
        return COLLISION_PENALTY.get(tuple(d), OTHER_PENALTY)



if __name__ == '__main__':
    plot_map()
    plt.show()
