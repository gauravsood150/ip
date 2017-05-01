clc;
close all;
clear all;

img=imread('lena.bmp');
img=double(img);
[r,c]=size(img);
gamma_image=zeros(r,c);
const=input('Enter the value of c ');
gamma=input('Enter the value of gamma ');
for i=1:r,
  for j=1:c,
    gamma_image(i,j)=const.* (img(i,j).^gamma);
  end;
end;

subplot(1,2,1);
imshow(uint8(img));
title('Original Image');
subplot(1,2,2);
imshow(uint8(gamma_image));
title('Gamma Image');
