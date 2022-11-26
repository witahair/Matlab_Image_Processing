clc; clear; close
% Rescaling
img = imread('cameraman.png');
%img = rgb2gray(img);
[h,w] = size(img);
n = 3;
h2 = h*n;
w2 = w*n;
img2 = zeros(h2,w2);

for i=1:h2
    for j=1:w2
        img2(i,j) = img(ceil(i/n),ceil(j/n));
    end
end

img2 = uint8(img2);
imshow(img);
figure
imshow(img2);
