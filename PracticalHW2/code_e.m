I = imread('noisy.png');
h = fspecial('gaussian',512,sqrt(5));
newI = imfilter(I,h);
imshow(newI);