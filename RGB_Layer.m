clc; clear; close;
% RGB each layer
img = imread("robot.jpg");

img_red=img(:,:,1);
img_red(:,:,2)=0;
img_red(:,:,3)=0;

imshow(img);
figure;
imshow(img_red);