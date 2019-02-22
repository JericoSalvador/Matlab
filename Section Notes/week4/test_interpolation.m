


function [] = test_interpolation(n)

    f = @(x) 1./ (1 + 10 + x.^2); 
    
    %-1: .01 : 1
    xi = linspace(-1,1,n)';
    yi = f(xi);

    [a] = VandermondeInterpolation(xi,yi); 
    
    x = linspace(-1, 1, 1000); 
    
    p = evaluate_polynomial(a,x);
    
    figure(1)
    clf 
    hold on
    plot(x, f(x), 'k') % real data poiints 
    plot(xi, yi, 'ro') % initial data points
    plot(x, p, 'b')    %polynomial fit
    
    Err = max( abs( f(x) - p)); 


end