import time
import logging
import os
from multiprocessing import Process, Pipe

import numpy
import cv, cv2
from matplotlib import pyplot as plt

from utils import root
from capture import Capture, find_best_image
from find_image import FindImage

SEARCH_MARGIN = 50

class LocalizeMap(object):
    def __init__(self, filename, find_filename = None):
        #reference localization image
        self.reference = cv2.imread(filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)

        self.find_filename = find_filename

        self.finder = None        

    def localize(self, template, prev_map_box=None):
        w, h = template.shape[::-1]

        #use previous position to make search faster, by cropping reference 
        #data set to the smaller starting range
        if prev_map_box:
            (x0, y0, x1, y1) = prev_map_box
            # NOTE: its img[y: y + h, x: x + w]
            margin_x0 = max(x0 - SEARCH_MARGIN, 0)
            margin_y0 = max(y0 - SEARCH_MARGIN, 0)

            margin_x1 = min(x1 + SEARCH_MARGIN, 2800)
            margin_y1 = min(y1 + SEARCH_MARGIN, 2800)

            reference = self.reference[margin_y0:margin_y1, margin_x0:margin_x1]
        else:
            reference = self.reference

        res = cv2.matchTemplate(reference, template, cv2.TM_CCOEFF_NORMED)

        min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)
        #print max_val

        #TODO: make this more elegant
        #hack to reset reference image when the match is totally out of whack
        if max_val < 0.1:
            prev_map_box = None
            res = cv2.matchTemplate(self.reference, template, cv2.TM_CCOEFF_NORMED)

            min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)
            

        #use this for approximate center location of the map
        #pos = (max_loc[0] + w/2, max_loc[1] + h/2)
        map_box = (max_loc[0], max_loc[1], max_loc[0] + w, max_loc[1] + h)            

        if prev_map_box:
            map_box = (map_box[0] + margin_x0, 
                       map_box[1] + margin_y0, 
                       map_box[2] + margin_x0, 
                       map_box[3] + margin_y0) 

        return map_box


    def extended_localize(self, template, prev_map_box=None):
        
        (x0, y0, x1, y1) = self.localize(template, prev_map_box)

        #this is canter location
        ax = (x0 + x1)/2
        ay = (y0 + y1)/2
        print "cccc", ax, ay
        
        center = (ax, ay)
        #if  (355 < ax < 2800 - 355) and (260 < ay < 2800 - 260):
        #    center = (ax, ay)
            
        if (260 > ay):
            center = (ax, ay - 36)            
        elif False:

            if not self.finder:
                self.finder = FindImage(self.find_filename)

            center = self.finder.locate(template)

            if center is None:
                center = (ax, ay)
            else:
                center[0] = center[0] + x0
                center[1] = center[1] + y0
            
            print '******', center


        return ((x0, y0, x1, y1), center)

    def localize_all(self, template):
        w, h = template.shape[::-1]
        res = cv2.matchTemplate(self.reference, template, cv2.TM_CCOEFF_NORMED)

        min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)

        threshold = max_val - 0.001
        loc = numpy.where( res >= threshold)
        pos = []
        for pt in zip(*loc[::-1]):
            pos.append((pt[0] + w/2, pt[1] + h/2))

        return pos


def test_localize_map():
    #use map of the buildings for localization
    building_filename = os.path.join(root, 'flash', 'fft2', 'export', 'frames', 
                                     'DefineSprite_552', '1.png')
    
    mapper = LocalizeMap(building_filename)

    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'level1_start.png')
    c = Capture(filename)
    
    while True:
        template = c.snap_gray()
        print mapper.localize(template)
        


def test_localize_map_all():
    #use map of the buildings for localization
    building_filename = os.path.join(root, 'flash', 'fft2', 'export', 'frames', 
                                     'DefineSprite_551', '1.png')
    
    mapper = LocalizeMap(building_filename)

    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'level1_start.png')
    c = Capture(filename)
    
    while True:
        template = c.snap_gray()
        print mapper.localize_all(template)


def test_localization():
    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'level1_start.png')
    c = Capture(filename)
    template = c.snap_gray()
    w, h = template.shape[::-1]


    res = cv2.matchTemplate(img, template, cv2.TM_CCOEFF_NORMED)

    min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)

    print (max_loc[0], max_loc[1], max_loc[0] + w, max_loc[1] + h)

    return (max_loc[0], max_loc[1], max_loc[0] + w, max_loc[1] + h)
    
    #loc = numpy.where( res >= 0.15)

    # count = 0
    # save_name = 'hello_map_%s.png'
    # for pt in zip(*loc[::-1]):
    #     print "found one!"
    #     if True:
    #         top_left = (pt[0], pt[1])
    #         bottom_right = (pt[0] + w, pt[1] + h)
    
    #         cv2.rectangle(img_rgb, top_left, bottom_right, 255, 2)

    #         cv2.imwrite(save_name % count, img_rgb)
    #         count +=1

    
    


if __name__ == '__main__':
    test_localize_map_all()
