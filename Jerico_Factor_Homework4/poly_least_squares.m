
function [a, err] = poly_least_squares(xi,yi,M)
    
    % xi: vector of nodes xi = [xi(1) ... xi(N)]
    % yi: vector of data points yi = [yi(1) ... yi(N)] corresponding to xi
    % M : degree of polynomial model
    
    % a : vector of coefficients representing the polynomial
    % err: error between the model and the data in the 2-norm
    
    % compare with polyfit() and polyval()
    if length(xi) ~= length(yi)
        disp("error: xi, yi not same length");
        return; 
    end
    
    B = zeros(length(xi),M+1);
    for i = 1: length(xi) 
        for j = 1 : M+1

        B(i,j) = (xi(i)) ^ (j-1); 

        end
    end
    a = (transpose(B)*B) \ (transpose(B) * yi); 
    phi = B * a; 
    err = sum((yi - phi) .^ 2); 

end