#!/usr/bin/env python
# -*- coding: utf-8 -*-

import cv2

img = cv2.imread(r'd:\flappybird\atlas.png')
cv2.namedWindow('Image')
cv2.imshow('Image',img)
cv2.waitKey(0)
cv2.destroyAllWindows()