#!/usr/bin/env python
import os
import time

import numpy as np
import cv, cv2
from utils import root
from matplotlib import pyplot as plt

import cv2
from find_obj import filter_matches,explore_match

FLANN_INDEX_KDTREE = 1  # bug: flann enums are missing
FLANN_INDEX_LSH    = 6

MIN_MATCH_COUNT = 3


class FindImage(object):
    def __init__(self, image_filename):
        #image of the object to find
        self.img1 = cv2.imread(image_filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)

        self.h1, self.w1 = self.img1.shape[:2]

        self.corners1 = np.float32([[0, 0], [self.w1, 0], [self.w1, self.h1], [0, self.h1]])

        self.detector = cv2.SURF(0)

        flann_params = dict(algorithm = FLANN_INDEX_KDTREE, trees = 5)

        self.matcher = cv2.FlannBasedMatcher(flann_params, {})

        # find the keypoints and descriptors with SIFT
        self.kp1, self.desc1 = self.detector.detectAndCompute(self.img1, None)


    def locate(self, img2, show=False):
        center = None

        kp2, desc2 = self.detector.detectAndCompute(img2, None)

        raw_matches = self.matcher.knnMatch(self.desc1, trainDescriptors = desc2, k = 2) #2
        p1, p2, kp_pairs = filter_matches(self.kp1, kp2, raw_matches)

        if len(p1) >= 4:
            H, status = cv2.findHomography(p1, p2, cv2.RANSAC, 5.0)
            print '%d / %d  inliers/matched' % (np.sum(status), len(status))

            if H is not None:

                h2, w2 = img2.shape[:2]

                corners = np.int32( cv2.perspectiveTransform(self.corners1.reshape(1, -1, 2), H).reshape(-1, 2) ) #+ (w1, 0) 
                center = np.int32(np.mean(corners, axis=0))
                

                if show:
                    cv2.polylines(img2, [corners], True, (255, 255, 255))



                    cv2.circle(img2, (center[0], center[1]), 5,(255,255,255),)
                    cv2.imshow('hello1', img2)

                    if False:
                        vis = explore_match('hello', self.img1, img2, kp_pairs, status, H)
        else:
            if len(p2):
                center = np.int32(np.mean(p2, axis=0))
            else:
                center = None

            print '%d matches found, not enough for homography estimation' % len(p1)
            
        return center        
        

def test_find_image():
    car_filename = os.path.join(root, 'flash', 'fft2', 'export', 'images', '445.png')

    f = FindImage(car_filename)
    
    template_filename = os.path.join(root, 'flash', 'fft2', 'processed', 'first_screen.png')
    img2 = cv2.imread(template_filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)

    start_time = time.time()
    for i in range(10):
        print f.locate(img2, show=False)
    end_time = time.time()

    print 1/((end_time - start_time)/10)

    cv2.waitKey()
    cv2.destroyAllWindows()


if __name__=='__main__':
    test_find_image()
