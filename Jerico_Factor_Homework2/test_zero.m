function [zc, ec, x, f] = test_zero()
% This function tests the chord_method function
%
    func = @(x) 16 * x.^5 - 20 * x.^3 + 5 * x;
    % x in [-1,1]
    a = -.99; b = -.9; 
    tol = 10^-15; 
    Nmax = 20000; 
    z0 = cos(9*pi/10);  
    
    [zc,iter,res,his] = chord_method(func, a, b, tol, Nmax); 
    
    ec = abs(his - z0); 
    x = linspace(-1,1,1000); 
    f = func(x); 
    
    %length(his)
    %iter
    clf
    
    figure(1)
    hold on
    grid on
    plot(x,f)
    title('f(x) = 16*x^5 - 20*x^3 + 5*x')
    xlabel('x')
    ylabel('f(x)')
    
    figure(2)
    %plot(ec)
    semilogy(ec)
    title('convergence history')
    xlabel('k')
    ylabel('e(k)')
    
    ey = ec(2:end);
    ex = ec(1:end-1);
    figure(3)
    loglog(ex,ey); 
    title('e(k+1) vs e(k)')
    xlabel('e(k)')
    ylabel('e(k+1)')
    
    
end

