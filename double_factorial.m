

function [output] = double_factorial(n)

    m = n;
    output = 1;
    while(m >= 2) 
        output = output * m; 
        m = m - 2; 
        
    end
    
end
