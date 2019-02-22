% Example of plotting 
% A basic tutorial: https://www.tutorialspoint.com/matlab/matlab_plotting.htm

% generate something to plot
x = -2 : .01 : 2;
y = @(x) x.^5 + x.^2 - 1;   % https://www.mathworks.com/help/matlab/matlab_prog/creating-a-function-handle.html

figure(1)
figure('DefaultAxesFontSize',16)
grid on
hold on         % without this, only the last plot will be shown (plots won't be layered on top of each other)
plot(x, y(x), 'g')
plot(x, 2*y(x), 'm')
title('Plot example', 'fontsize', 18)
legend('y(x)', '2*y(x)', 'Location', 'northwest') % https://www.mathworks.com/help/matlab/ref/legend.html