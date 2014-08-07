#see http://stackoverflow.com/questions/10391123/how-to-run-two-python-blocking-functions-matplotlib-show-and-twisted-reactor-r

if __name__ == '__main__':
    from level1 import main
    raise SystemExit(main())

from matplotlib import use
use('GTK')
from matplotlib import pyplot

from matplotlib.backends import backend_gtk

from twisted.internet import gtk2reactor
gtk2reactor.install()

#OK, we are done with wierd stuff here, the rest is vanilla

from twisted.internet import reactor, task
from steering.twisted_steering import press

import os
import numpy as np
import time 
from pylab import get_current_fig_manager

from planning.astar.global_map import (plot_map, GlobalMap, 
                                       MIN_UNCONTRAINED_PENALTY)

from screen_capture.localize_map import LocalizeMap
from screen_capture.capture import Capture, find_best_image

from utils import root



class LocalizationDisplay(object):
    def __init__(self):
        self.fig, self.ax = plot_map()
        
        #position window properly
        thismanager = get_current_fig_manager()
        try:
            thismanager.window.wm_geometry("+700+0")
        except AttributeError:
            self.fig.canvas.manager.window.move(700,0)

        self.ax.set_aspect('equal')
        self.ax.set_xlim(0,700)
        self.ax.set_ylim(0,500)
        self.ax.hold(True)
        self.fig.canvas.draw()

    def update(self, map_box):
        (x0, y0, x1, y1) = map_box
        self.ax.set_xlim([x0, x1])
        self.ax.set_ylim([y1, y0])
            
        #new_position  = (max_loc[0] + w/2, max_loc[1] + h/2)
        pyplot.scatter( [(x0 + x1)/2], 
                        [(y0 + y1)/2])

        self.fig.canvas.draw()

class LocalizationMapper(object):
    def __init__(self):
        map_filename = os.path.join(root, 'flash', 'fft2', 'processed', 'aligned_localization_data_map.png')

        self.mapper = LocalizeMap(map_filename)

        filename = os.path.join(root, 'flash', 'fft2', 'processed', 'level1_start.png')
        self.c = Capture(filename)
        
        self.prev_pos = None
        
    def run(self):
        template = self.c.snap_gray()
        
        map_box = self.mapper.localize(template, self.prev_pos)
        self.prev_pos = map_box
        return map_box



display = LocalizationDisplay()
mapper = LocalizationMapper()

#replaced the call to pyplot.show() with a call to my own Show subclass with a mainloop
class TwistedShow(backend_gtk.Show):
    running = False
    def mainloop(self):
        if not self.running:
            self.running = True
            reactor.run()


def main():
    def proof():
        global display, mapper
        start_time = time.time()
        map_box = mapper.run()
        display.update(map_box)
        end_time = time.time()
        fps = 1/(end_time-start_time)
        print "%2d frames per sec\r" % fps,


    task.LoopingCall(proof).start(1/10)
    press('up', 10)
    press('right',10)

    TwistedShow()()



