img = imread('lena.bmp');
img = rgb2gray(img);
subplot(1,3,1);
imshow(img);
[r, c] = size(img);

str = zeros(3,3);

for x = 1:3
  for y = 1 : 3
    if (x == 2 || y == 2)
      str(x, y) = 1;
    end
  end
end

new  = uint8(zeros(r, c));
for x = 2: r - 1
  for y = 2: c - 1
    flag = 0;
    for  x1 = 1: 3   
      for y1 = 1 : 3
        if (str(x1,y1) == 1 )
           if (img(x + x1 - 2 , y + y1 - 2) < 128) 
            flag = 1;
           end
        end
      end
    end
    if (flag == 0)
      for  x1 = 1: 3   
        for y1 = 1 : 3
          new(x, y) = img(x  + (x1 - 2) , y + ( y1 - 2) ) ;
        end
      end
    end
  end
end 

subplot(1,3,2);
imshow(new);

new  = uint8(zeros(r, c));
for x = 2: r - 1
  for y = 2: c - 1
    flag = 0;
    for  x1 = 1: 3   
      for y1 = 1 : 3
        if (str(x1,y1) == 1 )
           if (img(x + x1 - 2 , y + y1 - 2) < 128) 
            flag = 1;
           end
        end
      end
    end
    if (flag == 1)
      for  x1 = 1: 3   
        for y1 = 1 : 3
          new(x, y) = img(x  + (x1 - 2) , y + ( y1 - 2) ) ;
        end
      end
    end
  end
end 
