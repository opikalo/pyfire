# -----------
# User Instructions
#
# Define a function smooth that takes a path as its input
# (with optional parameters for weight_data, weight_smooth,
# and tolerance) and returns a smooth path. The first and 
# last points should remain unchanged.
#
# Smoothing should be implemented by iteratively updating
# each entry in newpath until some desired level of accuracy
# is reached. The update should be done according to the
# gradient descent equations given in the instructor's note
# below (the equations given in the video are not quite 
# correct).
# -----------

import matplotlib.pyplot as plt
import networkx as nx
from planning.astar.global_map import plot_map


from copy import deepcopy
from collections import OrderedDict

from planning.astar.local_graph import plan_path

# thank you to EnTerr for posting this on our discussion forum
def printpaths(path,newpath):
    for old,new in zip(path,newpath):
        print '['+ ', '.join('%.3f'%x for x in old) + \
               '] -> ['+ ', '.join('%.3f'%x for x in new) +']'

# Don't modify path inside your function.
path = [[0, 0],
        [0, 1],
        [0, 2],
        [1, 2],
        [2, 2],
        [3, 2],
        [4, 2],
        [4, 3],
        [4, 4]]

def diff(p1, p2):
    d = 0
    for x, y in zip(p1, p2):
        d += abs(x-y)
        
    return d

def _gd(path, weight_data = 0.5, weight_smooth = 0.1, tolerance = 0.000001):

    xo = path
    xn = deepcopy(xo)
    t = 10*tolerance
    while (t > tolerance) :
        before = deepcopy(xn)
        for i in range(1, len(xo)-1):
            xn[i] = xn[i] + weight_data * (xo[i] - xn[i]) + \
                weight_smooth * (xn[i + 1] + xn[i - 1] - 2 * xn[i])
            
        t = diff(before, xn)
        
    return xn

def _gd_fixed(path, fix, weight_data = 0.5, weight_smooth = 0.1, tolerance = 0.000001):

    xo = path
    xn = deepcopy(xo)
    t = 10*tolerance
    while (t > tolerance) :
        before = deepcopy(xn)
        for i in range(2, len(xo) - 2):
            if not fix[i]:
                j = i
                j_p = (i + 1)
                j_p2 = (i + 2)
                j_m = (i - 1) 
                j_m2 = (i - 2)
                xn[j] = xn[j] + weight_data * (xo[j] - xn[j]) + \
                    weight_smooth * (xn[j_p] + xn[j_m] - 2 * xn[j])

                xn[j] = xn[j] + 0.5*weight_smooth*(2*xn[j_m]-xn[j_m2]-xn[j])
                xn[j] = xn[j] + 0.5*weight_smooth*(2*xn[j_p]-xn[j_p2]-xn[j])
            
        t = diff(before, xn)
        
    return xn


def smooth(path, weight_data = 0.5, weight_smooth = 0.1, tolerance = 0.000001):

    # Make a deep copy of path into newpath
    newpath = deepcopy(path)

    #######################
    ### ENTER CODE HERE ###
    #######################
    xo = [x[0] for x in newpath]
    yo = [x[1] for x in newpath]
    
    xn = _gd(xo, 
             weight_data = weight_data, 
             weight_smooth = weight_smooth, 
             tolerance = tolerance)
    
    yn = _gd(yo, 
             weight_data = weight_data, 
             weight_smooth = weight_smooth, 
             tolerance = tolerance)

    
    path = []
    for x, y in zip(xn, yn):
        path.append([x,y])

    newpath = path

    return newpath # Leave this line for the grader!


def smooth_fixed(path, fix, weight_data = 0.5, weight_smooth = 0.1, tolerance = 0.00001):

    # Make a deep copy of path into newpath
    newpath = deepcopy(path)

    #######################
    ### ENTER CODE HERE ###
    #######################
    xo = [x[0] for x in newpath]
    yo = [x[1] for x in newpath]
    
    xn = _gd_fixed(xo, fix,
             weight_data = weight_data, 
             weight_smooth = weight_smooth, 
             tolerance = tolerance)
    
    yn = _gd_fixed(yo, fix,
             weight_data = weight_data, 
             weight_smooth = weight_smooth, 
             tolerance = tolerance)

    
    path = []
    for x, y in zip(xn, yn):
        path.append([x,y])

    newpath = path

    return newpath # Leave this line for the grader!



def smooth_graph(graph_path, start_pos, goal_pos):
    path_pos = nx.get_node_attributes(graph_path, 'pos')

    #this relies on the fact that nodes are sorted properly
    od = OrderedDict(sorted(path_pos.items(), key=lambda t: t[0]))

    path_keys = od.keys()
    path_list = od.values()

    fixed = []
    for node in path_keys:
        node_fixed = graph_path.node[node].get('fixed', False)
        fixed.append(node_fixed)
        

    #finally, actual smoothing
    smoothed_path = smooth_fixed(path_list, fixed)

    #printpaths(path_list, smoothed_path)
    
    smoothed_graph = deepcopy(graph_path)

    for i, k in enumerate(path_keys):
        smoothed_graph.node[k]['pos'] = smoothed_path[i]

    return smoothed_graph

def test_smooth_graph():
    start_pos = [2650, 2650]
    goal_pos = [1900, 400]

    graph_path = plan_path(start_pos, goal_pos)
    path_pos = nx.get_node_attributes(graph_path, 'pos')

    sg = smooth_graph(graph_path, start_pos, goal_pos)

    sg_pos = nx.get_node_attributes(sg, 'pos')

    plot_map()
    
    nx.draw(sg, sg_pos, node_size=5, edge_color='r')
    
    nx.draw(graph_path, path_pos, node_size=5, edge_color='b')
    #nx.draw_networkx_labels(graph_path, path_pos)

    plt.show()


def test_smooth_basic():
    printpaths(path,smooth(path))


def test_planned_path_smoothing():
    start_pos = [2650, 2650]
    goal_pos = [1900, 400]

    graph_path = plan_path(start_pos, goal_pos)

    path_pos = nx.get_node_attributes(graph_path, 'pos')

    #this relies on the fact that nodes are sorted properly
    od = OrderedDict(sorted(path_pos.items(), key=lambda t: t[0]))

    path_keys = od.keys()
    path_list = od.values()

    #finally, actual smoothing
    smoothed_path = smooth(path_list)

    printpaths(path_list, smoothed_path)
    
    smoothed_graph = deepcopy(graph_path)

    for i, k in enumerate(path_keys):
        smoothed_graph.node[k]['pos'] = smoothed_path[i]
    
    smoothed_pos = nx.get_node_attributes(smoothed_graph, 'pos')

    plot_map()
    
    nx.draw(smoothed_graph, smoothed_pos, node_size=5, edge_color='r')
    
    nx.draw(graph_path, path_pos, node_size=5, edge_color='b')
    #nx.draw_networkx_labels(graph_path, path_pos)

    plt.show()


if __name__ == '__main__':
    test_smooth_graph()

