
function [lambda , L] = compute_Lebesgue_function(xi, x)

    % xi vector of interpolation nodes xi = [xi(1) ... xi(N+1)]
    % x vector of points at which we want to evaluate the Lebesgue function
    
    % lambda lebesgue function ?N (x) evaluated at x
    % L: Lebesgue constant ?N , computed by taking the maximum of the vector lambda.
    

    %calc lebesgue function 
    lambda = zeros(1,length(x));
    for i = 1: length(x)
        
        l = ones(1,length(xi)); 
        for j = 1: length(xi)            
            for k = 1: length(xi)
                if j ~= k
                    l(j) = l(j) * (x(i) - xi(k))/(xi(j) - xi(k)); 
                end
            end 
        end
        sum = 0; 
        for n = 1: length(xi)
            sum = sum + abs(l(n));
        end
        lambda(i) = sum;
        
    end
    L = max(lambda); 
end