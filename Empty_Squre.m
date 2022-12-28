clc; clear; close;
% Draw an Empty Square with Diameter
img = zeros(1000,1000);

img(500:700,500)=255;
img(500:700,700)=255;
img(500,500:700)=255;
img(700,500:700)=255;

for i=500:700
    img(i,i)=255;
    img((700-i)+500,i)=255;
end

img = uint8(img);
imshow(img);