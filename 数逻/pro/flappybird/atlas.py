#!/usr/bin/env python
# -*- coding: utf-8 -*-

import cv2.cv as cv
import os

img = cv.LoadImage("d:/flappybird/atlas.png", -1) #读取原图（这就是那张拼过的图片，我改了一下名字）
mask = cv.LoadImage("d:/flappybird/atlas.png", 0) #读取mask
width, height = cv.GetSize(img)
img2 = cv.CreateImage((width, height), 8, 4) #创建一张背景透明的图片
cv.Copy(img, img2, mask) #copy过去
file = open("d:/flappybird/atlas.txt") #这是输入的文件
for line in file:
    strs = line.split(" ")
    fileName = strs[0]
    imgWidth = int(strs[1])
    imgHeight = int(strs[2])
    imgX = float(strs[3])*width
    imgY = float(strs[4])*height
    cv.SetImageROI(img2, (int(imgX), int(imgY), imgWidth, imgHeight)); #设置感兴趣的区域
    cv.SaveImage("d:/flappybird/" + fileName + ".png", img2) #根据读取到的文件名保存到这个路径下