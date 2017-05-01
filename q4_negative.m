clc;
clear;
img=imread('lena.bmp');
[r,c]=size(img);
neg_img=zeros(r,c);     % make a matrix of size of rxc with values zero
for i=1:r,
  for j=1:c,
    neg_img(i,j)=255-img(i,j);      % applying (s=(L-1)-r) Negative Transform
  end;
end;
subplot(1,2,1);
imshow(img);                  % Original Image
title('Original Image');
subplot(1,2,2);
imshow(uint8(neg_img));       % Negative Transform of Image  
title('Negative Image');