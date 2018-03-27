function [Xn, mu, sigma] = featureNormalize(X)
% this function normalises the feature input variables

% to compute mean
mu = mean(X);
X_bar = repmat(mu,size(X,1),1);

% subtracts the mean of each feature from the dataset, 
%and scale the feature values by their respective standard deviation
X_tilda = X - X_bar;

sigma = std(X);
X_std = repmat(sigma,size(X,1),1);

Xn = X_tilda ./ X_std;

