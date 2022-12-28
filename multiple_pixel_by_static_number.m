clc; clear; close;
img = imread("lena.tif");
img = rgb2gray(img);
[h,w] = size(img);
num = 2;
img2 = zeros(h,w);

for i=1:w
    for j=1:h
        img2(j,i)=img(j,i)*num; %roshan tar shodan
    end
end

img2 = uint8(img2);
imshow(img2);