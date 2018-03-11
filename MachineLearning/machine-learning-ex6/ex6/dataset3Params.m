function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
testSet1 = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
testSet2 = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
costList = zeros(64,1);

[A,B] = meshgrid(testSet1,testSet2);
c=cat(2,A',B');
combos=reshape(c,[],2);

for i = 1:64
    model = svmTrain(X, y, combos(i,1), @(x1, x2) gaussianKernel(x1, x2, combos(i,2))); 
    predictions = svmPredict(model, Xval);
    costList(i,1) = mean(double(predictions ~= yval));
end



[~, position] = min(costList);



C = combos(position,1);

sigma = combos(position,2);





% =========================================================================

end
