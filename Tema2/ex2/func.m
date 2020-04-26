function [x] = func(t)
    for i = 1 : length(t)
        if t(i) < 0
            x(i) = 2;
        else
            x(i) = 1;
        end
    end
end

