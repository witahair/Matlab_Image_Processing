%% first_sq
clc;
clear;
close;
img=zeros(1000,1000);
img(500,300:500)=255;
img(500:700,300)=255;
img(700,300:500)=255;
img(500:700,500)=255;
imshow(img);
%% seconde_sq
img(400,400:600)=255;
img(400:600,400)=255;
img(600,400:600)=255;
img(400:600,600)=255;
%imshow(img);
%% conecting
for i=400:500 %this is x range
    img((500-i)+400,i-100)=255; % first is y then x
    img((600-i)+500,i-100)=255; % (n-i)+n mean top to down formed to left
    img(i,(500-i)+500)=255; %(n+i)-n mean top to down formed to right
    img(i+200,(500-i)+500)=255;
end
img=uint8(img);
imshow(img);
