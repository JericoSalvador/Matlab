
function [em,et,es] = test_integration()

    f = @(x) (1./(1+x.^2)) .* cos(3/2 .* exp(-x.^2)) - (x.^3./30);
    a = -3;
    b = 1;
    Iref = 1.6851344770476;
    
    em = zeros(1,99); 
    et = zeros(1,99); 
    es = zeros(1,99); 
    
    for n = 2 : 100
        et(n-1) = int_trapezoidal_rule(f,a,b,n);
        em(n-1) = int_midpoint_rule(f,a,b,n);
        es(n-1) = int_Simpson_rule(f,a,b,n);
    end
    
    em = abs(Iref - em);
    et = abs(Iref - et); 
    es = abs(Iref - es);
    
    figure(1);
    clf; 
    x = linspace(-1,3, 1000); 
    plot(x,f(x)); 
    title('f(x)'); 
    
    figure(2); 
    clf; 
    n = 2:100; 
    loglog(n,em,'DisplayName','midpoint');
    hold on 
    loglog(n,et, 'DisplayName', 'trapezoidal'); 
    loglog(n,es, 'DisplayName', 'Simpson'); 
    title('loglog of error')
    legend()
    
end
