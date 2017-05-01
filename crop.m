a=imread('lena.bmp');
xt=input('Enter the x top ');
yt=input('Enter the y top ');
xb=input('Enter the x bottom ');
yb=input('Enter the y bottom ');
b=zeros(xb-xt,yb-yt);
for i=yt:yb
    for j=xt:xb
        b(i-yt+1,j-xt+1)=a(i,j);
    end
end
subplot(1,2,1);
imshow(a);
title('Original Image');
subplot(1,2,2);
imshow(b, [0,255]);
title('Croped Image');