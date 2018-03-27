function [J] = costFun(X,y,w)
% this function computes the cost given the parameters, input and output
% varaibles

N = size(X,1); % number of data points
error_sq = [];

% to caculate cost
for i = 1:N
    error_sq = [error_sq ((w'*X(i,:)' - y(i,:))^2)]; % to caculate cos
end

error_sq = sum(error_sq);
J = error_sq/(2*N);