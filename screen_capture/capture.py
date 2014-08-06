import logging
import os
import time
import json 

import ConfigParser

import ImageGrab
import timeit
import numpy
import cv, cv2

from utils import root

class Error(Exception):
    pass

class NoGameScreenFound(Error):
    pass

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

def find_best_image(img_rgb, template, threshold):
    img_gray = cv2.cvtColor(img_rgb, cv2.COLOR_BGR2GRAY)
    w, h = template.shape[::-1]
    
    res = cv2.matchTemplate(img_gray,template,cv2.TM_CCOEFF_NORMED)

    loc = numpy.where( res >= threshold)
    for pt in zip(*loc[::-1]):
        return [pt[0], pt[1], pt[0] + w, pt[1] + h]

    raise NoGameScreenFound("could not find a decent match with threshold=%s" % threshold )

def screen_stream(box):
    pil_image = ImageGrab.grab(box).convert('RGB')
    cv_im = numpy.array(pil_image) 
    cv_im = cv_im[:, :, ::-1].copy() 

    return cv_im


def screen_grab(template, threshold, save=False, save_name=''):
    pil_image = ImageGrab.grab().convert('RGB')
    cv_im = numpy.array(pil_image) 

    cv_im = cv_im[:, :, ::-1].copy() 

    box = find_best_image(cv_im, template, threshold)

    if save:
        top_left = (box[0], box[1])
        bottom_right = (box[2], box[3])
    
        cv2.rectangle(cv_im, top_left, bottom_right, 255, 2)

        cv2.imwrite(save_name, cv_im)

    return box


class Capture(object):
    def __init__(self, filename, threshold=0.8):
        """ Filename here is pointing to master image to look for """

        self.config = ConfigParser.RawConfigParser()
        self.config_name = 'screen.cfg'
        
        start_template = cv2.imread(filename, 0)
        try:
            self.box = screen_grab(start_template, threshold)
            logger.info("found bounding box %s", self.box)

            #save screen bounds for later
            self.config.add_section('screen')
            self.config.set('screen', 'box', self.box)

            with open(self.config_name, 'wb') as configfile:
                self.config.write(configfile)
            
        except NoGameScreenFound as err:
            self.config.read(self.config_name)
            try:
                self.box = json.loads(self.config.get("screen","box"))
                logger.info("loaded previous bounding box %s", self.box)
            except:
                raise err
                
    def snap(self):
        return screen_stream(self.box)

    def snap_gray(self):
        return cv2.cvtColor(screen_stream(self.box), cv2.COLOR_BGR2GRAY)

def test_capture():
    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'level1_start.png')
    c = Capture(filename)

def test_rate():
    filename = os.path.join(root, 'flash', 'fft2', 'processed', 'level1_start.png')
    c = Capture(filename)
    start_time = timeit.default_timer()
    c.snap()
    elapsed = timeit.default_timer() - start_time
    print 1/elapsed
            
                               
if __name__ == '__main__':
    test_capture()
    test_rate()
