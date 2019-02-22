
function [P, n, p] = pi_series()
    
    P = zeros(1,15);
    for n = 0:14
        
        sum = 0; 
        for k = 0:n
            sum = sum + ((-1) ^ k) * ((1/(6*k+1)) + (1/(6*k+5)));
        end 
        
        P(n+1) = 3 * sum;
        
    end 
    
    %extra credit 1
    n = 0;
    sum = 0;
    while(abs(pi - sum) > 10^-4)
        sum = sum + 3 *((-1) ^ n) * ((1/(6*n+1)) + (1/(6*n+5)));
        n = n + 1;
    end
    n = n - 1;
    
    
    %extra credit 2
    sum = 0;
    for k = 0:1000
        sum = sum + 3 *((-1) ^ k) * ((1/(6*k+1)) + (1/(6*k+5)));
    end
    
    i = 1;
    for k = 1001:1003
        sum = sum + 3 *((-1) ^ k) * ((1/(6*k+1)) + (1/(6*k+5)));
        L(i) = sum;
        i = i + 1;
    end
    e = zeros(1,3); 
    for i = 1:3
        e(i) = abs( L(i) - pi); 
    end
    
    p = log(e(3)/ e(2)) / log((e(2)/e(1)));
    
    sum = 0;
    Z = zeros(1,15)
    for k = [0:14]
        sum = sum + 3 * (-1)^ k * (1/(6*k+1) + (1/(6*k+5)));
        Z(k+1) = sum; 
    end
    Z
  
end