clc;
clear all;
close all;
img=imread('lena.bmp');
[r,c]=size(img);
log_img=zeros(r,c);     % make a matrix of size of rxc with values zero
const=input('Enter the value of c ');
for i=1:r,
  for j=1:c,
    log_img(i,j)=const.*log10(1+double(img(i,j)));      % applying (s=c*log(1+r)) Log Transform
  end;
end;
subplot(1,2,1);
imshow(img);                  % Original Image
title('Original Image');
subplot(1,2,2);
imshow(uint8(log_img));       % Log Transform of Image  
title('Log Transform Image');