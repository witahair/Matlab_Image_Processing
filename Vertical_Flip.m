clc; clear; close;
% Flip Vertical - Mirror
img = imread("robot.jpg"); 
img = rgb2gray(img);
[h,w] = size(img);

for j=1:h
    for i=1:w/2
        tmp=img(j,i);
        img(j,i)=img(j,(w+1)-i);
        img(j,(w+1)-i)=tmp;
    end
end

img = uint8(img);
imshow(img);