function [crr] = imagecorr(path1,path2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

im1 = imread(path1);

im2 = imread(path2);
[x1, y1,z1] = size(im1);
[x2, y2,z2] = size(im2);
cr1 = imcrop(im1,[0 0 min(y1,y2) min(x1,x2)]);
cr2 = imcrop(im2,[0 0  min(y1,y2) min(x1,x2)]);
size(cr1);
size(cr2);
rgb1 = rgb2gray(cr1);
rgb2 = rgb2gray(cr2);
crr = corr2(rgb1,rgb2);
end

