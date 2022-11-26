clc; clear; close
img = imread('zz.jpeg');
img = rgb2gray(img);
[h,w] = size(img);
img2 = zeros(h,w);
mask = [1/9,1/9,1/9;1/9,1/9,1/9;1/9,1/9,1/9];
for i=2:w-1
    for j=2:h-1
        x1 = 0;
        for x=-1:1
            for y=-1:1
                x1 = x1 + (mask(x+2, y+2)*img(j+x,i+y));
                img2(j,i) = x1;
            end
        end
    end
end
imshow(img); figure; img2 = uint8 (img2); imshow(img2);
