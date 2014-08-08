#!/usr/bin/env python
import os

import numpy as np
import cv, cv2
from utils import root
from matplotlib import pyplot as plt

import cv2
from find_obj import filter_matches,explore_match

FLANN_INDEX_KDTREE = 1  # bug: flann enums are missing
FLANN_INDEX_LSH    = 6

MIN_MATCH_COUNT = 3

car_filename = os.path.join(root, 'flash', 'fft2', 'export', 'images', '445.png')
img1 = cv2.imread(car_filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)

template_filename = os.path.join(root, 'flash', 'fft2', 'processed', 'first_screen.png')
img2 = cv2.imread(template_filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)


detector = cv2.SURF(0)
norm = cv2.NORM_L2
flann_params = dict(algorithm = FLANN_INDEX_KDTREE, trees = 5)

matcher = cv2.FlannBasedMatcher(flann_params, {})

# find the keypoints and descriptors with SIFT
kp1, desc1 = detector.detectAndCompute(img1, None)
kp2, desc2 = detector.detectAndCompute(img2, None)

raw_matches = matcher.knnMatch(desc1, trainDescriptors = desc2, k = 2) #2
p1, p2, kp_pairs = filter_matches(kp1, kp2, raw_matches)
if len(p1) >= 4:
    H, status = cv2.findHomography(p1, p2, cv2.RANSAC, 5.0)
    print '%d / %d  inliers/matched' % (np.sum(status), len(status))

    if H is not None:

        h1, w1 = img1.shape[:2]
        h2, w2 = img2.shape[:2]

        corners = np.float32([[0, 0], [w1, 0], [w1, h1], [0, h1]])
        corners = np.int32( cv2.perspectiveTransform(corners.reshape(1, -1, 2), H).reshape(-1, 2) ) #+ (w1, 0) 
        cv2.polylines(img2, [corners], True, (255, 255, 255))
        
        center = np.int32(np.mean(corners, axis=0))
        print center
        import pdb; pdb.set_trace()
        cv2.circle(img2, (center[0], center[1]), 5,(255,255,255),)
        cv2.imshow('hello1', img2)
else:
    H, status = None, None
    print '%d matches found, not enough for homography estimation' % len(p1)

vis = explore_match('hello', img1, img2, kp_pairs, status, H)

cv2.waitKey()
cv2.destroyAllWindows()
