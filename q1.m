a=imread('/home/gaurav/Desktop/ip/lena.bmp');
[r,c] =size(a);
b=zeros(r,c);
for i=1:r,
  for j=1:c,
    if(a(i,j) > 128)
      b(i,j)=1;
    end;
  end;
end;
subplot(1,2,1);
imshow(a);
subplot(1,2,2);
imshow(logical(b));
    