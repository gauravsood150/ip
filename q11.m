clc;
close all;
clear all;
%img=imread('lena.bmp');
img=[1,2;3,4];
[m,n]=size(img);
img=double(img);

dct_coeff=zeros(m,n);
aU=1/sqrt(m);
aV=1/sqrt(n);
rt2=sqrt(2);

for u=1:m,
  for v=1:n,
    temp=0;
      for x=1:m,
        for y=1:n,
          thetaX=((2*(x-1) +1)*pi*(u-1))/(2*m);
          thetaY=((2*(y-1) +1)*pi*(v-1))/(2*n);
          temp=temp+img(x,y)*cos(thetaX)*cos(thetaY);
        end;
      end;
    temp=temp*aU*aV;
    if(u~=1)
      temp=temp*rt2;
    end;
    if(v~=1)
      temp=temp*rt2;
    end;
  dct_coeff(u,v)=temp;
  end;
end;

disp(dct_coeff);