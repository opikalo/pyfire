import os
import sys
import time
from multiprocessing import Process, Pipe

import numpy as np
import matplotlib.pyplot as plt
from pylab import get_current_fig_manager

from localize_map import LocalizeMap
from utils import root
from capture import Capture, find_best_image

from planning.astar.global_map import (plot_map, GlobalMap, 
                                       MIN_UNCONTRAINED_PENALTY)

class DataStreamProcess(Process):
    def __init__(self, connec, *args, **kwargs):
        self.connec = connec
        Process.__init__(self, *args, **kwargs)

    def run(self):
        random_gen = np.random.mtrand.RandomState(seed=127260)
        for _ in range(30):
            time.sleep(0.01)
            new_pt = random_gen.uniform(0, 2800, size=2)
            self.connec.send(new_pt)


class LocalizeStreamProcess(Process):
    def __init__(self, connec, *args, **kwargs):
        self.connec = connec

        #C:\local_tools\experimental\pyfire\flash\fft2\export\frames\DefineSprite_772_fla.maps.Map_02
        #building_filename = os.path.join(root, 'flash', 'fft2', 'export', 'frames', 
        #                                 'DefineSprite_551', '1.png')
    
        #map_filename = os.path.join(root, 'flash', 'fft2', 'export', 'frames', 
        #                                 'DefineSprite_772_fla.maps.Map_02', '1.png')

        map_filename = os.path.join(root, 'flash', 'fft2', 'processed', 'aligned_localization_data_map.png')

        self.mapper = LocalizeMap(map_filename)

        filename = os.path.join(root, 'flash', 'fft2', 'processed', 'level1_start.png')
        self.c = Capture(filename)

        Process.__init__(self, *args, **kwargs)

    def run(self):
        while True:
            time.sleep(0.01)
            template = self.c.snap_gray()
            pos = self.mapper.localize(template)
            print pos
            self.connec.send([pos])


def main():
    conn1, conn2  = Pipe()
    data_stream = LocalizeStreamProcess(conn1)
    data_stream.start()

    #plt.gca().set_xlim([0, 2800])
    #plt.gca().set_ylim([0, 2800])
    plot_map()
    thismanager = get_current_fig_manager()
    thismanager.window.wm_geometry("+1000+0")

    plt.gca().set_title("Running...")

    plt.ion()

    pt = None
    while True:
        if not(conn2.poll(0.1)):
            if not(data_stream.is_alive()):
                break
            else:
                continue
        new_positions = conn2.recv()
        if pt is not None:
            plt.scatter( [x[0] for x in new_positions], 
                         [x[1] for x in new_positions])
            #plt.plot([pt[0], new_pt[0]], [pt[1], new_pt[1]], "bs:")
            plt.pause(0.001)
        pt = new_positions

    plt.gca().set_title("Terminated.")
    plt.draw()
    plt.show(block=True)

if __name__ == '__main__':
    main()
