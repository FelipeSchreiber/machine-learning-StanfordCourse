function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%======================= NON VECTORIZED ======================
%for i = 1:m
%  J = J + ((theta(1) + theta(2)*X(i) - y(i))^2);
%endfor

%J /= (2*m);

%====================== VECTORIZED ============================

%J = 0;
%X = [ones(m,1),X];
prediction = X*theta;
J = sum((prediction - y).^2)/(2*m);
%disp(sprintf("J value is: %.2f",J));


% =========================================================================

end
