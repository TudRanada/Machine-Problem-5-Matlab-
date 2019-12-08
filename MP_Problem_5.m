n = 0:1:199;
x = sin((3*pi/100).*n);
l = 1;
while l ~= 199
    if n(l) == 0 
        y(l) = -1.5.*x(l) + 2.*x(l + 1) - 0.5.*x(l + 2);

    else n(l) > 0 && n(l) < 199;
        y(l) = 0.5.*x(l + 1) -0.5.*x(l - 1);
    end

    if n(l) == 199 
        y(l)=1.5.*(x(l)) - 2.*x(l - 1) + 0.5.*x(l - 2);

    end
    l = l+1;
end

hold on
plot(x)
plot(y)