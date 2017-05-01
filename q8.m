clc;
close all;
clear all;
pkg load image


I = imread('lena.bmp');
J = imnoise(I,'salt & pepper',0.02);
H= imnoise(I,'gaussian',0.1,20);
 
subplot(1,3,1),imshow(I),title('Original Image');
subplot(1,3,2),imshow(J),title('Salt & pepper noise');
subplot(1,3,3),imshow(I),title('Gaussian noise');