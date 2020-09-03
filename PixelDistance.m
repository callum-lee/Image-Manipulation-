function [squaredDist] = PixelDistance(P,Q)
% PixelDistance.m calculates the square of the distance between two points
% (P and Q) in colour space.
% Inputs: P = point 1 in 3D colour space (3 element array)
%         Q = point 2 in 3D colour space (3 element array)
% Output: squaredDist = the square of the distance between point P and Q
% Author: Callum Lee

% First convert all potential uint8 variables into doubles
P = double(P);
Q = double(Q);

% Calculate the squared distance between Point P and Q and sum all the
% values using the sum function
squaredDist = sum((P-Q).^2);

