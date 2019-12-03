y = [gen_y(70),gen_y(59),gen_y(47)];
sound(y)
audiowrite('partE.wav',y,8192);
plot(1:8000*3,y)


function [x] = rand_gen(m)
    x = zeros(1,8000);
    x(1:m) = 2*rand(1,m)-1;
end

function [y] = gen_y(m)
    a = 0.99;
    x = rand_gen(m);
    y = mysystem2(m, a, x);
end