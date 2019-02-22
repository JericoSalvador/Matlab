% Secant Method to numerically approximate zero of function (fun)
% a, b are first guesses, tol is the error tolerance, Nmax is max no. iterations 

function [z0, iter, res, his] = secant_method(fun, a, b, tol, Nmax)
    
    his = [a, b]; % history of guesses
    iter = 2;     % number of iterations to reach residual within tolerance
                  % start at 2 since 2 guesses are given
    res = 1;      % res = |x_n - x_n-1|, set to arbitrary value >> tol to start 

    xnm1 = a;     % x_(n-1)
    xnm2 = b;     % x_(n-2)
    
    while (res > tol)       % until the tolerance has been met
        xn = xnm1 - fun(xnm1) * ( xnm1 - xnm2 ) / ( fun(xnm1) - fun(xnm2) );    % secant method
        his = [his, xn];    % append new guess to history array
        
        res = abs(xn - xnm1);   % current res
        
        xnm2 = xnm1;        % update values
        xnm1 = xn;
        iter = iter + 1;
        
        % if the code iterates Nmax times without converging to a solution,
        % print an error message and exit the for loop
        if (iter == Nmax)
            disp(['Error tolerance was not met within ', num2str(Nmax), ' iterations'])
            break
        end
        
    end
    
    z0 = xn;    % set the output solution to the last guess   

end