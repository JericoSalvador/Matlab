
function [a] = VandermondeInterpolation(x,y)

    n = length(x); 
    vand = ones(n); 
    
    for i = 1 : n-1
        vand(:,i+1) = x.^i; 
    end
    
    det(vand); 
    a = vand \ y; 
    
    
end