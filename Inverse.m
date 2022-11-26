clc; clear; close;
% Inverse = Flip Vertical + Horizontal (270)
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

for i=1:w
    for j=1:h/2
        tmp=img(j,i);
        img(j,i)=img((h+1)-j,i);
        img((h+1)-j, i)=tmp;
    end
end

img = uint8(img);
imshow(img);