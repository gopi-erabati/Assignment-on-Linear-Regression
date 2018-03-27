function data1 = plotData(X,y)
% this function is used to scatter the input and output variables

scatter(X,y,'x');
xlabel('Population of City in 10,000s');
ylabel('Profit in $10,000s');
title('scatter plot of training data');
