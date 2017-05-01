img1 = imread('lena.bmp');
freq = uint8(zeros(256));
[r, c] = size(img1);
subplot(2, 3, 1);
imshow(img1);
%New Image
nimg1 = uint8(zeros(r, c));
% Find min and max elements for stretching
mx = 0;
mn = 256;
for i = 1:r,
    for j = 1:c,
        if(img1(i, j) > mx)
            mx = img1(i, j);
        end
        if(img1(i, j) < mn)
            mn = img1(i, j);
        end
        freq(img1(i, j) + 1) = freq(img1(i, j) + 1) + 1;
    end
end
subplot(2, 3, 2);
bar([1:size(freq, 1)], freq, 256);
for i = 1:r,
    for j = 1:c,
        nimg1(i, j) = uint8((img1(i, j) - mn)* (255 / (mx - mn) ));
    end
end
subplot(2, 3, 3);
imshow(uint8(nimg1));
for i = 1:r,
    for j = 1:c,
        freq(nimg1(i, j) + 1) = freq(nimg1(i, j) + 1) + 1;
    end
end
subplot(2, 3, 4);
bar([1:size(freq, 1)], freq, 256);

sm = 0;
for i = 1: 256,
   sm = sm + freq(i);
end
pmf = zeros(256);
for i = 1: 256,
   pmf(i) = freq(i) / sm;
end
sm = 0;
cdf= zeros(256);
for i = 1: 256,
   cdf(i) = pmf(i) + sm;
   sm = cdf(i);
end
cdf = cdf.*7;
for i = 1:r,
    for j = 1:c,
        nimg1(i, j) = cdf(nimg1(i, j) + 1);
    end
end
subplot(2, 3, 5);
imshow(uint8(nimg1));
for i = 1:r,
    for j = 1:c,
        freq(nimg1(i, j) + 1) = freq(nimg1(i, j) + 1) + 1;
    end
end
subplot(2, 3, 6);
bar([1:size(freq, 1)], freq, 256);
% Stretch the histogram
for i = 1:r,
    for j = 1:c,
        freq(img1(i, j)) = freq(img1(i, j)) + 1;
    end
end