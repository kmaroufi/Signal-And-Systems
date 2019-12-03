% halate avval
m = 70;
a = 0.95;
t = [pi:2*pi/(m-1):2*pi+pi];
x = zeros(1,8000);
x(1:m) = -sawtooth(t);
%plot(1:m, x(1:m));
y = mysystem2(m, a, x);
sound(y)
audiowrite('partD-1.wav',y,8192);
plot(1:8000,y)