function [z0,iter,res,his] = chord_method(f,a,b,tol,Nmax)
%   This function implements the chord method of approximating zeros
%   
    q = (f(b) - f(a))/(b-a); 
    
    iter = 1; 
    x = (a + b) / 2;
    his(1) = x; 
    while iter < Nmax
        iter = iter+1; 
        prev = x;
        x = x - f(x)/q;
        his(iter) = x;  
        if abs(x - prev) < tol 
            break
        end 
    end
    z0 = x; 
    res = abs(f(z0)); 
    
end

