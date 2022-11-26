clc; clear; close;
% Draw an Empty Square
img = zeros(1000,1000);

img(500:700,500)=255;
img(500:700,700)=255;
img(500,500:700)=255;
img(700,500:700)=255;

img = uint8(img);
imshow(img);