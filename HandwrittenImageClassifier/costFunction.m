function [J, grad] = costFunction(theta, X, y)
  %COSTFUNCTION Compute cost and gradient for logistic regression
  %   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
  %   parameter for logistic regression and the gradient of the cost
  %   w.r.t. to the parameters.
  
  % Initialize some useful values
  m = length(y); % number of training examples
  
  % You need to return the following variables correctly 
  J = 0;
  grad = zeros(size(theta));
  
  %DIMENSIONS: 
  %   theta = (n+1) x 1
  %   X     = m x (n+1)
  %   y     = m x 1
  %   grad  = (n+1) x 1
  %   J     = Scalar
  
  z = X * theta;      % m x 1
  h_x = sigmoid(z);   % m x 1 
  
  J = (1/m)*sum((-y.*log(h_x))-((1-y).*log(1-h_x))); % scalar
  
  grad = (1/m)* (X'*(h_x-y));     % (n+1) x 1
  
  % =============================================================
  
end
