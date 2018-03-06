function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
sum = 0;
tup = size(X);
n = tup(2);

for i = 1:m
    plus = -(y(i,1))*log(sigmoid(X(i,:)*theta))-(1-y(i,1))*log(1-sigmoid(X(i,:)*theta));
    sum = sum + plus;
end
regularsum = 0;
for i = 2:n
    regularsum = regularsum + (theta(i,1))^2;
end

J = sum/m + (lambda/(2*m))*regularsum;



for i = 1:n
    if (i == 1)
        agg = 0;
        for j = 1:m
            add = (sigmoid(X(j,:)*theta)-y(j))*X(j,i);
            agg = agg + add;
        end
        grad(i,1) = agg/m;
    else
        agg = 0;
        for j = 1:m
            add = (sigmoid(X(j,:)*theta)-y(j))*X(j,i);
            agg = agg + add;
        end
        grad(i,1) = agg/m + (lambda/m)*theta(i,1);
    end
end

    





% =============================================================

end
