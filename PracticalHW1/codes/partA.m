m = 70;
a = 0.9;
x = zeros(1,8000);
x(1:m) = 2*rand(1,m)-1;
y = mysystem2(m, a, x);
sound(y)
audiowrite('partA.wav',y,8192);
plot(1:8000,y)