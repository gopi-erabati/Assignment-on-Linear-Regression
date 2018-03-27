function J_diff = diffCost(X,y,w)
% this function computes the diff. cost given the parameters, input and output
% varaibles

N = size(X,1);
error_sq = [];

for i = 1:N
    error_sq = [error_sq; ((w'*X(i,:)' - y(i,:))*X(i,:))];
end

error_sq = sum(error_sq);
J_diff = error_sq'./N;




