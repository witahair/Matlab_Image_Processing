clc; clear; close;
% Negative
img = imread("cameraman.png");
[h,w] = size(img);

for j=1:h
    for i=1:w
        img(j,i)=(w-1)-img(j,i);
    end
end

img = uint8(img);
imshow(img);

