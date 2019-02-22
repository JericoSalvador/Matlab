
function [y] = matrix_times_vector(A,x)
    
    
    [m,n] = size(A);
    [v,w] = size(x);
    if n ~= v
        disp('Error, incorrect dimensions for matrix multiplication')
        return; 
    end
    y = zeros(m,w);
    for i = 1:m
        
        for l = 1:w
            sum = 0; 
            for j = 1:n
                sum = sum + A(i,j) * x(j,l);
            end
            y(i,l) = sum;
        end
    end
    return;
end