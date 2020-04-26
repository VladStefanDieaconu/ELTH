function ex3c()
a = 4;
[x y] = meshgrid(-4:0.1:4);
[m n] = size(x);
f = zeros(m, n);

for i = 1 : m
    for j = 1 : n
        r = sqrt(x(i,j)^2 + y(i,j)^2);
        if r > a
            r = (2*a^3/3 + a^5/5) / (r^2);
        else
            r = (2*r/3 + r^3/5);
        end
    f(i,j) = r;
    end
end
gradient(f);
contourf(x, y, f);
colorbar;
endfunction