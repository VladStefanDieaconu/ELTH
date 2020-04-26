function [val] = D(r, a)
    if r > a
            val = (2*a^3/3 + a^5/5) / (r^2);
        else
            val = (2*r/3 + r^3/5);
       end
end

