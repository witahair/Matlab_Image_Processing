% Draw line between two point
clc; clear;close
img = zeros(1000,1000);
p2 = [700,700];
p1 = [670,125];
m = ((p2(2) - p1(2)) / (p2(1) - p1(1)));
step = 0.05;
if(p2(1) > p1(1))
    step = -0.05;
end
for x = p2(1) : step : p1(1)
    y = m * (x - p2(1)) + p2(2);
    y = round(y);
    x = round(x);
    img(x,y) = 255;
end
img(p1(1),p1(2)) = 255;
img(p2(1), p2(2)) = 255;
img = uint8(img);
imshow(img);
