function [y] = mysystem2(m, a, x)
y = zeros(1,8000);
for i=1:8000
    if i-m < 1
        y(i) = x(i);
    else
        y(i) = a*y(i-m) + x(i);
    end
end
end

