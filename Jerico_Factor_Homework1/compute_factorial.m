

function [b] = compute_factorial(n)
    if n == 0
        b = 1;
        return;
    else
        b = 1;
        for c = 1:n
            b = b * c;
        end 
    end
    x = 1; 
    for i = 1:10
        newx = x(end)*i; 
        x = [x, newx]
    end
    disp(x); 
end

