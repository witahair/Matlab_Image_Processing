% Optional Rotate Around a Point
I = imread("cameraman.png");
[H, W] = size(I);  %Height and Width of I

phi = 120*pi/180; %Rotate 120 degrees

%Zoom coefficients
sx = 1;
sy = 1;

%Center point (the point that the image is rotated around it).
x0 = (H+1)/2 + 50;
y0 = (W+1)/2 + 20;

%Build transformation matrix.
T = [sx*cos(phi), -sx*sin(phi), 0
     sy*sin(phi),  sy*cos(phi), 0
     (W+1)/2-((sx*x0*cos(phi))+(sy*y0*sin(phi))), (H+1)/2+((sx*x0*sin(phi))-(sy*y0*cos(phi))), 1];

tform = affine2d(T);
J = imwarp(I, tform, 'OutputView', imref2d([H, W]), 'Interp', 'cubic');

%Shows that the center of the output image is the point that the image was rotated around it.
figure;imshow(J)