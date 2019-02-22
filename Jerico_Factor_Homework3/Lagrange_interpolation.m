
function [y] = Lagrange_interpolation(xi,yi,x)

%    xi: vector of interpolation nodes
%    yi: vector of data points at the interpolation nodes
%     x: vector of points at which we want to evaluate the lagrange polynomial interpolant
    
%     y: a vector representing the lagrange polynomial evaluated at x
    
    if length(yi) == length(xi)
        len = length(yi); 
    end

    y = zeros(1, length(x));
    for h = 1: length(x)
        
        l = ones(1, len); 
        for j = 1: len
            for k = 1: len
                if j ~= k
                    l(j) = l(j) .* (x(h) - xi(k))/(xi(j) - xi(k));  
                end            
            end
        end

        sum = 0; 
        for i = 1:len
            sum = sum + l(i)* yi(i);
        end

        y(h)= sum;
    end
end
