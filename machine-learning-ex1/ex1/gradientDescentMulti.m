function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

  
  %Transpose method
    theta = theta - alpha * (1/m) * (((X*theta) - y)' * X)'; % Vectorized  
    J_history(iter) = computeCostMulti(X, y, theta);

   %n=length(theta);
   %t=zeros(n,1);
   %for i=1:m
    % for j=1:n
       %t(j)=t(j)+(theta'*X(i,:)'-y(i))*X(i,j);
     %end
   %end
   %for j=1:n
     %theta(j)=theta(j)-(alpha/m)*t(j);
     %end
    %J_history(iter) = computeCostMulti(X, y, theta);  % Save the cost J in every iteration    
    
end
