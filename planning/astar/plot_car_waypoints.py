import json
import os

import numpy
import matplotlib.pyplot as plt

import networkx as nx

from scipy.misc import imread

root = os.path.join(r"c:\local_tools\experimental\pyfire")

import scipy.spatial

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
    tree = scipy.spatial.cKDTree(zip(x,y))
    
    dist, indexes = tree.query([current_p, goal_p])

    G.add_node(9999, pos=current_p)
    G.add_edge(9999, indexes[0])


    G.add_node(10000, pos=goal_p)
    G.add_edge(indexes[1], 10000)

    print dist, indexes

    pos = nx.get_node_attributes(G,'pos')
    
    return G, pos


filename = os.path.join(root, 'flash', 'fft2', 'processed', 'map.png')

img = imread(filename)

fig = plt.figure()
ax = fig.gca()

ax.set_xticks(numpy.arange(0,2800, 100))
ax.set_yticks(numpy.arange(0,2800, 100))
plt.grid()

#plt.scatter(x,y,zorder=1)
plt.imshow(img,zorder=0)

G, pos = plot_waypoints()
#nx.draw(G,pos, node_size=5)
pth = nx.astar_path(G, 9999, 10000)

H = G.subgraph(pth)
pos = nx.get_node_attributes(H,'pos')
nx.draw(H,pos, node_size=5)
print pth

plt.show()
