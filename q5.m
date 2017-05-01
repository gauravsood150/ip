clc;
close all;
clear all;

img=imread('lena.bmp');
img=double(img);
[r,c]=size(img);
new_img=zeros(r,c);

rmin=min(min(img))
rmax=max(max(img))
smin=input('Enter the minimum s ');
smax=input('Enter the maximum s ');
num=smax-smin;
deno=rmax-rmin;
a=(num/deno);
for i=1:r,
  for j=1:c,
    new_img(i,j)=smin + ( a*(img(i,j)-rmin) );
  end;
end;

subplot(1,2,1);
imshow(uint8(img));
title('Original Image');
subplot(1,2,2);
imshow(uint8(new_img));
title('Stretch Image');