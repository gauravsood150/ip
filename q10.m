clc;
close all;
clear all;
img=imread('lena.bmp');
subplot(1,3,1);
imshow(uint8(img));
title('Original Image');
%img=double(img);
[r,c]=size(img);
firstD_img=zeros(r,c);
for i=1:r-1,
  for j=1:c-1,
    gx=img(i+1,j)-img(i,j);
    gy=img(i,j+1)-img(i,j);
    firstD_img(i,j)=sqrt((gx*gx)+(gy*gy));
   end;
end;

secondD_img=zeros(r,c);

for i=2:r-1,
  for j=2:c-1,
    dx=img(i+1,j)+img(i-1,j)-2*img(i,j);
    dy=img(i,j+1)+img(i,j-1)-2*img(i,j);
    secondD_img(i,j)=sqrt((dx*dx)+(dy*dy));
   end;
end;


subplot(1,3,2);
imshow(uint8(firstD_img));
title('First Derivative');
subplot(1,3,3);
imshow(uint8(secondD_img));
title('Second Derivative');