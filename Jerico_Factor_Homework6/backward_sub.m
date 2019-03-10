
function [x] = backward_sub(U,b)
   
    if length(U) ~= length(b)
        disp('wrong dimensions')
    end
    
    len = length(U); 
    x = zeros(len, 1);
    x(len) = b(len) / U(len,len);
    for i = len-1: -1: 1
        x(i) = b(i); 
        for j = len : -1 : i + 1
            x(i) = x(i) - U(i,j) * x(j);
        end    
        x(i) = x(i) / U(i,i); 
    end

end