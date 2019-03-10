function [I] = int_Simpson_rule(fun,a,b,n)

    h = (b-a)/(n-1); 
    x1 = a; 
    I = 0; 
    for i = 1 : n-1
        
       x2 = x1 + h; 
       mid = (x1+ x2) / 2; 
       x = [x1;mid;x2];
       coeff = polyfit(x,fun(x),2);
       f = @(x) coeff(1) .* x.^2 + coeff(2) .* x + coeff(3);
       I = I + integral(f,x1,x2);
       
       x1 = x2; 
        
    end
end
