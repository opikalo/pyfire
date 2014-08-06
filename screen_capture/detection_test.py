import os

import cv2
import numpy as np
from matplotlib import pyplot as plt



from utils import root


building_filename = os.path.join(root, 'flash', 'fft2', 'export', 'frames', 
                                 'DefineSprite_552', '1.png')

img = cv2.imread(building_filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)
img2 = img.copy()

template_filename = os.path.join(root, 'flash', 'fft2', 'processed', 'first_screen.png')
template = cv2.imread(template_filename, cv2.CV_LOAD_IMAGE_GRAYSCALE)


w, h = template.shape[::-1]

# All the 6 methods for comparison in a list
methods = ['cv2.TM_CCOEFF', 'cv2.TM_CCOEFF_NORMED', 'cv2.TM_CCORR',
            'cv2.TM_CCORR_NORMED', 'cv2.TM_SQDIFF', 'cv2.TM_SQDIFF_NORMED']

#this one worked the best
methods = ['cv2.TM_CCOEFF_NORMED']


for meth in methods:
    img = img2.copy()
    method = eval(meth)

    # Apply template Matching
    res = cv2.matchTemplate(img,template,method)
    min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)

    # If the method is TM_SQDIFF or TM_SQDIFF_NORMED, take minimum
    if method in [cv2.TM_SQDIFF, cv2.TM_SQDIFF_NORMED]:
        top_left = min_loc
    else:
        top_left = max_loc
    bottom_right = (top_left[0] + w, top_left[1] + h)

    cv2.rectangle(img,top_left, bottom_right, 255, 2)

    plt.subplot(121),plt.imshow(res,cmap = 'gray')
    plt.title('Matching Result'), plt.xticks([]), plt.yticks([])
    plt.subplot(122),plt.imshow(img,cmap = 'gray')
    plt.title('Detected Point'), plt.xticks([]), plt.yticks([])
    plt.suptitle(meth)

    plt.show()
