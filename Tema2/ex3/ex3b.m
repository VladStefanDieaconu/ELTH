function ex3b()
a = 4;
[x, y] = meshgrid(-5:0.5:5);
[m, n] = size(x);
Dx = zeros(m,n);
Dy = zeros(m,n);
for i = 1 : m
    for j = 1 : n
        xcrt = x(i,j);
        ycrt = y(i,j);
        r = sqrt(xcrt^2 + ycrt^2);
        Dx(i,j) = D(r, a) * xcrt/r;
        Dy(i,j) = D(r, a) * ycrt/r;
    end
end
quiver(x, y, Dx, Dy);
endfunction
