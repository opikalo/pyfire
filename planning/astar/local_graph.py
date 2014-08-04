from __future__ import division

import json
import os

from collections import OrderedDict

import numpy
import matplotlib.pyplot as plt

import networkx as nx

from scipy.misc import imread

from utils import root

import scipy.spatial

from global_map import plot_map
from waypoints import graph_from_waypoints

def plot_waypoints():
    filename = os.path.join(root, 'flash', 'fft2', 
                            'export', 'binaryData', '910.bin')
    with open(filename) as f:
        car_graph = json.loads(f.read())

    G = nx.DiGraph()

    x = []
    y = []
    for p in car_graph['waypoints']:
        n_id = p['id']
        n_x = p['x']
        n_y = p['y']

        G.add_node(n_id, pos=(n_x, n_y))
        
        for c in p['connectionIDs']:
            G.add_edge(n_id, c)
        
        x.append(p['x'])
        y.append(p['y'])

    #find the nearest node
    current_p = [ 2650,2650 ]
    goal_p = [1900, 400]
    c_x = numpy.array(zip(x,y))
    tree = scipy.spatial.cKDTree(c_x)
    
    dist, indexes = tree.query([current_p, goal_p])

    G.add_node('start', pos=current_p)
    G.add_edge('start', indexes[0])


    G.add_node('goal', pos=goal_p)
    G.add_edge(indexes[1], 'goal')

    print dist, indexes

    pos = nx.get_node_attributes(G,'pos')
    
    return G, pos


def grid_graph(center_pos, dim, width):
    """ creates a grid graph centered around particular point with center_pos, 
    with dimension dim and particular width.

    For dim = 10, there will be 10 graph nodes, and grid will be 9x9. Because
    we normally want to keep the center node, dim should always be odd. For even
    dimensions, the size of the grid is increased by one.
    
    """

    #keep center_pos as actual node and expand from it
    if not dim % 2:
        dim += 1

    c_x = center_pos[0]
    c_y = center_pos[1]

    x_offset = c_x - width/2
    y_offset = c_y - width/2
    
    #for dimension of 10 x 10 (10 poles) the width is 10 - 1 = 9
    step = width / (dim - 1)

    L = nx.grid_2d_graph(dim, dim)
    
    #iterate through the nodes and set position 
    for n in L.nodes():
        index_x = n[0]
        index_y = n[1]

        n_x = x_offset + index_x * step
        n_y = y_offset + index_y * step
        
        L.node[n]['pos'] = [n_x, n_y]

        if L.node[n]['pos'] == center_pos:
            center = n

    return L, center

DEFAULT_COLOR = (255, 255, 255, 0)
GREEN_COLOR = (0, 128, 0, 255)
RED_COLOR = (255, 0, 0, 255)
BLUE_COLOR = (0, 0, 255, 255)

MIN_UNCONTRAINED_PENALTY = 1

def add_weights(graph, data):
    """ Helper utility to add weights to the graph edges, 
    based on the bitmap data. Modifies the graph in place and returns 
    custom labels for edges (useful for plotting weights).

    If either edge is in the forbidden region, mark edge with penalty weight
    Note: grid must be fine enough not to skip the features of the terrain.

    """

    penalty  = {
        DEFAULT_COLOR: MIN_UNCONTRAINED_PENALTY,
        GREEN_COLOR: 10,
        RED_COLOR: 100,
        BLUE_COLOR: 1000
    }

    #TODO: figure out why we have other colors
    OTHER_PENALTY = 10

    color_map = {
        DEFAULT_COLOR: 'w',
        GREEN_COLOR: 'g',
        RED_COLOR: 'r',
        BLUE_COLOR: 'b'
    }

    custom_labels={}

    for e in graph.edges():
        weight = 0
        for node in e:
            n_pos = graph.node[node]['pos']
        
            d = DEFAULT_COLOR

            try:
                #interesting, x,y seem to be swapped for image data
                d = data[n_pos[1]][n_pos[0]]
            except IndexError:
                #out of bounds for bitmap
                pass

            custom_labels[node] = color_map.get(tuple(d), 'o')

            weight += penalty.get(tuple(d), OTHER_PENALTY)

        graph[e[0]][e[1]]['weight'] = weight

    return custom_labels

def stitch(local_graph, global_graph, kd_tree, tolerance, target, rename_string):
    """ stitch local unconstrained graph with global graph,
    as long as the distance to nearest global graph node is within certain 
    tolerance. Requires pre-generated kd-tree for the global graph. """

    path_candidates = []
    for node, d in local_graph.nodes(data=True):
        node_pos = d['pos'] 
        dist, indexes = kd_tree.query([node_pos])
        if dist[0] < tolerance:
            #find astar path to the selected close proximity  node
            #TODO: compute node path here, and save it, extract length like this:
            # path = astar_path(G, source, target, heuristic)
            # length =  sum(G[u][v].get(weight, 1) for u, v in zip(path[:-1], path[1:]))
            path_length = nx.astar_path_length(local_graph, target, node)
            entry_node = indexes[0]

            path_candidates.append((path_length, target, node, entry_node))

    #chose best way to join to global graph
    path_candidates.sort()

    best_candidate = path_candidates[0]
    (path_length, target, node, entry_node) = best_candidate

    astar_path = nx.astar_path(local_graph, target, node)

    h = local_graph.subgraph(astar_path)
    route = h.to_directed()

    # because local_graphs have the same naming, aka (1,2) we have to rename
    # to join properly
    global_graph = nx.union(global_graph, route, rename=(None, rename_string))

    #connect two graphs
    global_graph.add_edge(rename_string + str(node), entry_node)
    global_graph.add_edge( entry_node, rename_string + str(node))

    return global_graph


def test_grid():
    plot_map()

    start_pos = [ 2650, 2650 ]

    L, c = grid_graph(start_pos, dim=10, width=1000)

    pos = nx.get_node_attributes(L,'pos')
    nx.draw(L, pos, node_size=5)

    plt.show()

def test_weights():
    plot_map()

    start_pos = [ 2650, 2650 ]

    L, c = grid_graph(start_pos, dim=10, width=1000)

    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'map.png')

    img_data = imread(filename)

    custom_labels = add_weights(L, img_data)

    pos = nx.get_node_attributes(L,'pos')
    #nx.draw(L, pos, node_size=5)

    edge_weight=dict([((u,v,),int(d['weight'])) for u,v,d in L.edges(data=True)])

    nx.draw_networkx_edge_labels(L,pos,edge_labels=edge_weight)
    nx.draw_networkx_nodes(L,pos, node_size=0)
    nx.draw_networkx_edges(L,pos)
    nx.draw_networkx_labels(L,pos, labels=custom_labels)

    plt.show()
    

def test_weights_planning():
    plot_map()

    start_pos = [ 2650, 2650 ]

    L, c = grid_graph(start_pos, dim=10, width=1000)

    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'map.png')

    img_data = imread(filename)

    custom_labels = add_weights(L, img_data)

    astar_path = nx.astar_path(L, (5, 5), (0, 4))

    H = L.subgraph(astar_path)

    h_pos = nx.get_node_attributes(H, 'pos')

    pos = nx.get_node_attributes(L,'pos')
    nx.draw(L, pos, node_size=5)

    edge_weight=dict([((u,v,),int(d['weight'])) for u,v,d in L.edges(data=True)])

    nx.draw_networkx_edge_labels(L,pos,edge_labels=edge_weight)
    nx.draw_networkx_nodes(L,pos, node_size=0)
    nx.draw_networkx_edges(L,pos)
    nx.draw_networkx_labels(L,pos, labels=custom_labels)

    nx.draw(H,h_pos, node_size=5, edge_color='r')


    plt.show()

def test_stitch():

    #make local unconstrained motion graph
    start_pos = [2650, 2650]
    goal_pos = [1900, 400]

    #create unconstrained local graph at the start
    start_local_graph, start_center = grid_graph(start_pos, dim=10, width=1000)

    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'map.png')

    img_data = imread(filename)

    add_weights(start_local_graph, img_data)

    #create unconstrained local graph at the goal
    goal_local_graph, goal_center = grid_graph(goal_pos, dim=10, width=1000)

    add_weights(goal_local_graph, img_data)

    #make global graph based on waypoints
    filename = os.path.join(root, 'flash', 'fft2', 
                            'export', 'binaryData', '910.bin')

    global_graph = graph_from_waypoints(filename)

    #make a tree from the global graph
    pos = nx.get_node_attributes(global_graph, 'pos')

    #sorted by keys
    d_x = OrderedDict(sorted(pos.items(), key=lambda t: t[0])).values()

    c_x = numpy.array(d_x)

    global_tree = scipy.spatial.cKDTree(c_x)

    #stitch together unconstrained local with global 
    u_graph = stitch(start_local_graph, global_graph, global_tree, 100, start_center, 'S-')

    u_graph = stitch(goal_local_graph, u_graph, global_tree, 100, goal_center, 'G-')

    u_pos = nx.get_node_attributes(u_graph, 'pos')

    plot_map()
    
    nx.draw(u_graph, u_pos, node_size=5)

    astar_path = nx.astar_path(u_graph, 'S-' + str(start_center), 'G-' + str(goal_center))

    H = u_graph.subgraph(astar_path)
    h_pos = nx.get_node_attributes(H, 'pos')

    nx.draw(H, h_pos, node_size=5, edge_color='r')

    plt.show()

if __name__ == '__main__':
    test_stitch()
