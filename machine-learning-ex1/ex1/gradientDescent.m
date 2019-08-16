
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values

m=length(y);
J_history=zeros(num_iters,1);
for iter = 1:num_iters


  %Transpose method
    theta = theta - alpha * (1/m) * (((X*theta) - y)' * X)'; % Vectorized  
    J_history(iter) = computeCostMulti(X, y, theta);
    
    
    
    %converting linear variables to multiple variable gradient descent
    
    
    
    %temp_theta0=0;
    %temp_theta1=0;
    %for i=1:m
    %temp_theta0=temp_theta0+(theta' * X(i,:)' -y(i));
    %temp_theta1=temp_theta1+(theta' * X(i,:)'-y(i))*X(i,2);
    %end
    %theta(1)=theta(1)-(alpha/m)*temp_theta0;
    %theta(2)=theta(2)-(alpha/m)*temp_theta1;

    
    % n=length(theta);
    %t=zeros(n,1);
   %for i=1:m
    % for j=1:n
     %  t(j)=t(j)+(theta'*X(i,:)'-y(i))*X(i,j);
     %end
   %end
   %for j=1:n
     %theta(j)=theta(j)-(alpha/m)*t(j);
   %end
   %J_history(iter) = computeCostMulti(X, y, theta);
end
