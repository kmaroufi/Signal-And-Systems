var = 5;
tmp = 0;
kernel = zeros(512,512);
for i = 1:512
    for j = 1:512
        kernel(i,j) = exp(-0.5/var*((i-256)^2+(j-256)^2));
        tmp = tmp + kernel(i,j);
    end
end
kernel = kernel / tmp;
kernel = abs(fft2(kernel));

I = imread('noisy.png');
I = fft2(I);

res = zeros(512,512,3);
res(:,:,1) = I(:,:,1) .* kernel;
res(:,:,2) = I(:,:,2) .* kernel;
res(:,:,3) = I(:,:,3) .* kernel;

newI = uint8(ifft2(res));
imshow(newI);
