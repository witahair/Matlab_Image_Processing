%% First COde
clc; clear; close all
img = imread('3.jpg');
img = rgb2gray(img);
[h,w] = size(img);
imshow(img);
%% Noisy 
for i=1:w
    for j=1:h
        x = rand();
       if(x>0.52)
           img(j,i) = 255;
       elseif(x<0.48)
           img(j,i) = 0;
       end
    end
end
figure
imshow(img);
%% Noise Reduction
img2 = img;
for j=2:h-1
    for i=2:w-1
        x1 = 0;
        if(img2(j,i)==0 || img2(j,i)==255)
           a = [];
           c = 1;
            for x=-1:1
                for y=-1:1
                   if(img2(j+x,i+y) ~= 0 && img2(j+x,i+y) ~= 255)
                        a(c)= img2(j+x,i+y); 
                        c=c+1;
                    end
                end
            end
            img2(j,i) = mean(a);
        end
    end
end
 figure; img2 = uint8(img2); imshow(img2);
