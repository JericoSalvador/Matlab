
function [x] = tridiag_solver(e,a,c,b)
    
    n = length(b); 
    alpha = zeros(n,1); 
    alpha(1) = a(1); 
    beta = zeros(n, 1); 
    y = zeros(n,1);
    y(1) = b(1);
    
    for i = 2: n
        beta(i) = e(i-1) /alpha(i-1); 
        alpha(i) = a(i) - beta(i) * c(i-1);
        y(i) = b(i) - beta(i) * y(i-1); 
    end
    
    x = zeros(n,1); 
    x(n) = y(n) / alpha(n); 
    for i = n-1 : -1 : 1
        x(i) = (y(i) - c(i) * x(i+1)) / alpha(i) ; 
    end

end