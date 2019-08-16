function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
J = 0;
  %J=J+(theta'*X (i,:)'-y(i))^2/(2*m);%this is matrix method below eqn can also be used.
  J=(X*theta-y)'*(X*theta-y)/(2*m);
  %J=J+(theta(1)+theta(2)*X(i)-y(i))^2*1/2*1/m;
