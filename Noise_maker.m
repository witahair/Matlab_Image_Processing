clear; clc; close; 
img = imread("robot.jpg");
img = rgb2gray(img);
[h,w] = size(img);
img2 = zeros(h,w);
mask = [1/9,1/9,1/9;1/9,1/9,1/9;1/9,1/9,1/9];

for i=1:w
    for j=1:h
        x= rand();
        if (x < 0.05)
            img(j,i)=0;
            
        elseif (x>0.95)
             img(j,i)=255;
        end
    end
end

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

img = uint8(img);
imshow(img)
figure
img2 = uint8(img2);
imshow(img2)