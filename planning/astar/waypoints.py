import json
import os

import numpy
import matplotlib.pyplot as plt

import networkx as nx

from scipy.misc import imread

from utils import root

import scipy.spatial

from global_map import plot_map

def graph_from_waypoints(filename):

    with open(filename) as f:
        car_graph = json.loads(f.read())

    G = nx.DiGraph()

    for p in car_graph['waypoints']:
        n_id = p['id']
        n_x = p['x']
        n_y = p['y']

        G.add_node(n_id, pos=(n_x, n_y))
        
        for c in p['connectionIDs']:
            G.add_edge(n_id, c)
        
    return G

def test_waypoints(filename):
    G = graph_from_waypoints(filename)

    plot_map()

    pos = nx.get_node_attributes(G, 'pos')
    nx.draw(G, pos, node_size=5)    
    plt.show()

def test_car_waypoints():
    filename = os.path.join(root, 'flash', 'fft2', 
                            'export', 'binaryData', '910.bin')
    test_waypoints(filename)

def test_human_waypoints():
    filename = os.path.join(root, 'flash', 'fft2', 
                            'export', 'binaryData', '911.bin')
    test_waypoints(filename)


if __name__ in '__main__':
    test_human_waypoints()
