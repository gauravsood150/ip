clc;
close all;
clear all;

img=imread('lena.bmp');
[r,c]=size(img);
s=input('Enter the zoomin value');        
m=s*r;
n=s*c;
img_zin=zeros(m,n);

for i=0:m-1,
  x=floor(i/s)+1;
  for j=0:n-1,  
    y=floor(j/s)+1;
    img_zin(i+1,j+1)=img(x,y);
  end;
end;

subplot(1,3,1);
imshow(img);
title('original image');
subplot(1,3,2);
imshow(uint8(img_zin));
title('Zoom in image');