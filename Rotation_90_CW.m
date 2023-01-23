% Rotation 90 - Clockwise
img = imread("Lenna.png");
img = rgb2gray(img);
[h,w] = size(img);
img2 = zeros(h,w);

for i=1:w
    for j=1:h
        img2(j,i) = img(h+1-i,j);
    end
end

img = uint8(img);
imshow(img);
figure
img2 = uint8(img2);
imshow(img2);

