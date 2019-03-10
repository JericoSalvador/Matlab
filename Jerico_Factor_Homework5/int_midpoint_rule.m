function [I] = int_midpoint_rule(fun,a,b,n)

    % fun: function handle representing f(x)
    % a,b: endpoints of integration interval
    % n: number of evenly spaced points a,b; 
    h = (b-a)/(n-1); 
    x1 = a; 
    I = 0; 
    for j = 1 : n-1
        x2 = x1 + h; 
        mid = (x2 + x1) / 2; 
        I = I + fun(mid)* h; 
        x1 = x2; 
    end

end