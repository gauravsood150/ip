a=imread('lena.bmp');
[row,col]=size(a);
subplot(1,3,1);
imshow(a);
title('Original Image');
%horizontal flip
for i=1:row
    for j=1:col/2
        temp=a(i,j);
        a(i,j)=a(i,col-j);
        a(i,col-j)=temp;
    end
end
subplot(1,3,2);
imshow(a);
title('Horizontal Image');
%vertical flip
b=imread('lena.bmp');
for i=1:row/2
    for j=1:col
        temp=b(i,j);
        b(i,j)=b(row-i,j);
        b(row-i,j)=temp;
    end
end
subplot(1,3,3);
imshow(b);
title('Vertical Image');