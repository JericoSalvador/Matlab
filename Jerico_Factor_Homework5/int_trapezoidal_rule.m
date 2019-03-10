
function [I] = int_trapezoidal_rule(fun, a, b, n)

    x1 = a; 
    I = 0; 
    h = (b-a)/(n-1); 
    for i = 1: n-1
        x2 = x1 + h; 
        I = I + ((fun(x1) + fun(x2)) * h) / 2; 
        x1 = x2; 
    end

end