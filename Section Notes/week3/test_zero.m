
% zs = zero obtained from secant method
% es = error 
function [zs, es, x, f] = test_zero ()

    func = @(x) 16 * x.^5 - 20 * x.^3 + 5 * x; % function handle 
    tol = 1e-15;    % res tolerance 
    Nmax = 2 * 1e5; % max iterations = 20000
    a = -0.99;      % first guess
    b = -0.9;       % second guess
    x0 = -0.99;     % actual answer
    
%   call secant method and set output to variables z0, iter, res, his
    [z0, iter, res, his] = secant_method(func, a, b, tol, Nmax);
    
    es = abs(his - z0);   % error vector = |x_k - x_iter(last)| for all k
    
    x = linspace(-1, 1, 1000);  % set of x values 
    f = func(x);                % f(x)
    
%   plot function
    figure(1)
    plot(x, f)
    title('f(x)');
    
%   plot convergence history
    figure(2)
    semilogy(1:iter, es)
    title('Semilog plot of error');

%   plot loglog
    figure(3)
    hold on
    loglog( es(1:iter-1), es(2:iter) );
%   plot a line with slope 1.618=actual convergence to compare
    pts = linspace( min(es), max(es), 1000);
    loglog(pts, pts.^(1.618))
    legend('Error RoC', 'Actual RoC'); 
    title('Loglog plot of Rate of Convergence (RoC) of error');
    

end
    
    
    
