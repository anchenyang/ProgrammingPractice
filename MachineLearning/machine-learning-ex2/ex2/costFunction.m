function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.


% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
sum = 0;



for i = 1:m
    plus = -(y(i,1))*log(sigmoid(X(i,:)*theta))-(1-y(i,1))*log(1-sigmoid(X(i,:)*theta));
    sum = sum + plus;
end
J = sum/m;

grad = zeros(size(theta));

n = 3;

for i = 1:n
    agg = 0;
    for j = 1:m
        add = (sigmoid(X(j,:)*theta)-y(j))*X(j,i);
        agg = agg + add;
    end
    grad(i,1) = agg/m;
end


    
    


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
