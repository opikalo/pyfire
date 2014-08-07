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
        prev_pos = None
        while True:
            start_time = time.time()
            time.sleep(0.01)
            template = self.c.snap_gray()
            pos = self.mapper.localize(template, prev_pos)
            prev_pos = pos
            time_pos = (time.time(), pos)
            self.connec.send(time_pos)
            end_time = time.time()
            fps = 1/(end_time-start_time)
            print "%2d frames per sec\r" % fps,

def main():
    conn1, conn2  = Pipe()
    data_stream = LocalizeStreamProcess(conn1)
    data_stream.start()

    #plt.gca().set_xlim([0, 2800])
    #plt.gca().set_ylim([0, 2800])
    plot_map()
    thismanager = get_current_fig_manager()
    thismanager.window.wm_geometry("+700+0")

    plt.gca().set_title("Running...")

    plt.ion()

    map_box = None
    while True:
        if not(conn2.poll(0.1)):
            if not(data_stream.is_alive()):
                break
            else:
                continue

        (sent_time, map_box) = conn2.recv()

        while (time.time() - sent_time) > 1/20:
            #we are getting behind by more then a sec
            (sent_time, map_box) = conn2.recv()

        if map_box is not None:
            (x0, y0, x1, y1) = map_box
            plt.gca().set_xlim([x0, x1])
            plt.gca().set_ylim([y1, y0])
            
            #new_position  = (max_loc[0] + w/2, max_loc[1] + h/2)
            plt.scatter( [(x0 + x1)/2], 
                         [(y0 + y1)/2])

            #plt.plot([pt[0], new_pt[0]], [pt[1], new_pt[1]], "bs:")
            plt.pause(0.001)
    map_box = (x0, y0, x1, y1)

    plt.gca().set_title("Terminated.")
    plt.draw()
    plt.show(block=True)

if __name__ == '__main__':
    main()
