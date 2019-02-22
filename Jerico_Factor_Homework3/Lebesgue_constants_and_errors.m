
function [L1,L2,L3,L4,e1,e2,e3,e4]=Lebesgue_constants_and_errors()

    x_even = @(N) (linspace(0,N, N+1) .* 2 ./ N) -1;
    x_uneven = @(N) cos(linspace(0,N,N+1) .* pi ./ N);

%     x = linspace(-1,1,1000); 
    
    [x,f,P1,P2,P3,P4] = test_Lagrange_interpolation(); 
    
    e1 = max(abs(f(x) - P1)); 
    e2 = max(abs(f(x) - P2)); 
    e3 = max(abs(f(x) - P3)); 
    e4 = max(abs(f(x) - P4));
    
    figure(1); 
    [y1, L1] = compute_Lebesgue_function(x_even(14),x);
    plot(x, y1,'m'); 
    title('lebesgue function 15 evenly split points'); 
    
    figure(2); 
    [y2, L2] = compute_Lebesgue_function(x_even(40),x);
    plot(x, y2,'m'); 
    title('lebesgue function 40 evenly split points'); 

    
    figure(3); 
    [y3, L3] = compute_Lebesgue_function(x_uneven(14),x);
    plot(x, y3,'m'); 
    title('lebesgue function 14 gauss points'); 

    
    figure(4); 
    [y4, L4] = compute_Lebesgue_function(x_uneven(40),x);
    plot(x, y4,'m'); 
    title('lebesgue function 40 gauss points'); 
   
        

end