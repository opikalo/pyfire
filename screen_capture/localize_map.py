import time
import logging
import os
from multiprocessing import Process, Pipe

import numpy
import cv, cv2
from matplotlib import pyplot as plt

from utils import root
from capture import Capture, find_best_image

class LocalizeMap(object):
    def __init__(self, filename):
        #reference localization image
        self.reference = cv2.imread(filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)
        
    def localize(self, template):
        w, h = template.shape[::-1]

        res = cv2.matchTemplate(self.reference, template, cv2.TM_CCOEFF_NORMED)

        min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)

        pos = (max_loc[0] + w/2, max_loc[1] + h/2)

        return pos

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
