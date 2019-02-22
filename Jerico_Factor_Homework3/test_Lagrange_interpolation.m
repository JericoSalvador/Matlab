
function [x,f,P1,P2,P3,P4]=test_Lagrange_interpolation()

    f = @(x) 1 ./ (1 + (sin(2 .* pi .* x )).^ 2); 
    x = linspace(-1,1,1000);  
    
    x_even = @(N) (linspace(0,N, N+1) .* 2 ./ N) -1;
    x_uneven = @(N) cos(linspace(0,N,N+1) .* pi ./ N); 
    
    P1 = Lagrange_interpolation(x_even(14), f(x_even(14)), x);
    P2 = Lagrange_interpolation(x_even(40), f(x_even(40)), x);
    P3 = Lagrange_interpolation(x_uneven(14), f(x_uneven(14)), x);
    P4 = Lagrange_interpolation(x_uneven(40), f(x_uneven(40)), x);
    
    
    
    figure(1) 
    plot(x, f(x), 'b');
    hold on
    plot(x, P1, 'r');
    plot(x_even(14),f(x_even(14)), 'ro');
    title('lagrange interpolation with 15 even points')
    
    figure(2)
    plot(x,f(x), 'b');
    hold on
    plot(x,P2,'r');
    plot(x_even(40), f(x_even(40)), 'ro'); 
    title('lagrange interpolation with 40 even points')
    
    figure(3) 
    plot(x, f(x), 'b');
    hold on
    plot(x, P3, 'r');
    plot(x_uneven(14),f(x_uneven(14)), 'ro');  
    title('lagrange interpolation with 15 gauss points')

    
    figure(4)
    plot(x,f(x), 'b');
    hold on
    plot(x,P4,'r');
    plot(x_uneven(40), f(x_uneven(40)), 'ro'); 
    title('lagrange interpolation with 40 gauss points')

end