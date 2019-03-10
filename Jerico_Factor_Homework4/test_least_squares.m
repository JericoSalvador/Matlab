 function [x,p1,p2,p4,p8] = test_least_squares()
    
    data = load('DJI_2014_2019.dat'); 
    x = linspace(0,1,1000); 
    xi = data(:,1); 
    yi = data(:,2); 
    size(xi);
    size(yi);
    [p1a, err1] = poly_least_squares(xi,yi,1); 
    [p2a, err2] = poly_least_squares(xi,yi,2); 
    [p4a, err4] = poly_least_squares(xi,yi,4); 
    [p8a, err8] = poly_least_squares(xi,yi,8);

    pp1 = polyfit(xi,yi,8)
    p1 = evaluate_function(p1a, x); 
    p2 = evaluate_function(p2a, x); 
    p4 = evaluate_function(p4a, x); 
    p8 = evaluate_function(p8a, x); 
    figure(1); 
    clf; 
    plot(xi,yi,'bo');
    hold on; 
    plot(x,p1,'r'); 
    plot(x,p2,'r'); 
    plot(x,p4,'r'); 
    plot(x,p8,'r'); 

end

function y = evaluate_function(p, x)
	
	y = 0; 
	for i = 1 : length(p)
		y = y + p(i) .* x .^ (i-1); 

	end 
end
