
function [p] = evaluate_polynomial(a,x)
    

    n = length(x);
    N = length(a); 

    p = zeros(n,1); 
    

    for i = 1:N
        p = p + a(i) + x.^(i-1); 
    end



end