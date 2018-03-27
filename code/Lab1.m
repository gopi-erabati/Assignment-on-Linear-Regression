clc;
% to fetch data
filename = './lab1data1.txt';

%to load data
Data2 = load(filename);
X = Data2(:,1);
y = Data2(:,2);

%% 2.1
figure(1)
plotData(X,y); %to scatter plot data

%% 2.2
% to calculate parameters
w = LinearReg(X,y);
disp('the parameters for data1 are ')
disp(w);

%% 2.3 
% to compute profit
pr_35 = w(1,1) + w(2,1) * 3.5;
pr_35 = pr_35 * 1e4;
pr_70 = w(1,1) + w(2,1) * 7.0;
pr_70 = pr_70 * 1e4;
disp(['The profit in cities of 35000 people is ',num2str(pr_35)]);
disp(['The profit in cities of 70000 people is ',num2str(pr_70)]);

%% 3.1

filename = './lab1data2.txt';

% to load data
Data2 = load(filename);
X = [Data2(:,1) Data2(:,2)];
y = Data2(:,3);

% to calculate parameters
w = LinearReg(X,y);
disp('The parameters for data2 before norm');
disp(w);

%% 3.2
% to normalise features
[Xn, mu, sigma] = featureNormalize(X);

x_1 = (1650 - mu(1,1))/sigma(1,1);
x_2 = (3 - mu(1,2))/sigma(1,2);

% to compute parameters
w = LinearReg(Xn,y);
disp('The parameters for data2 after norm');
disp(w);

price  = w(1,1) + w(2,1) * x_1 + w(3,1) * x_2;
disp('The predicted price of house (linear regression)');
disp(price);

%% 4 Gradient Descent

X = [ones(size(X,1),1) Xn];
w = zeros(3,1);
alpha = 0.4; % learning rate
NIter = 50;

w = GradientDescent(X,y,w,alpha,NIter);
disp('the parameters after gradient descent are');
disp(w);

price  = w(1,1) + w(2,1) * x_1 + w(3,1) * x_2;
disp('The predicted price of house (gradient descent)');
disp(price);