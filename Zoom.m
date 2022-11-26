clc; clear; close;
% Zoom
img = imread('cameraman.png');
%img = rgb2gray(img);
[h,w] = size(img);
n = 2.5;
h2 = floor(h*n);
w2 = floor(w*n);
img2 = zeros(h2,w2);

for i = 1:w2
    for j = 1:h2
        img2(i,j,:) = img(ceil(i/n),ceil(j/n),:);
    end
end

img2 = uint8(img2);
imshow(img);
figure
imshow(img2);
