
function [z] = compute_Euclidean_norm(x)

    n = length(x);
    sum = 0;
    for i = 1:n
        
        sum = sum + x(i) ^ 2; 
        
    end 
    
    z = sqrt(sum);
    return; 
    
end