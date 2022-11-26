% Rotate 90
img = imread("cameraman.png");
[h,w] = size(img);
img2 = zeros(h,w);

for i=1:w
    for j=1:h
        img2(j,i)=img(i,w+1-j);
    end
end

img2=uint8(img2);
imshow(img2);
