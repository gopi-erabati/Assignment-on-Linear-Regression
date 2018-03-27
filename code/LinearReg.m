function w = LinearReg(X,y)
% this function computes the parameters given input and output
% varaibles

% to add ones for get the design matrix
phi = [ones(size(X,1),1) X];

% by least squares solution to estimate parameters
temp = pinv(phi'*phi);
w = temp * phi' * y;



