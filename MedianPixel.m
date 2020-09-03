function [Rm,Gm,Bm] = MedianPixel(pixels)
% MedianPixel.m calculates the median RGB values from a list of pixels.
% Inputs: pixels = 1xnx3 3D array of RGB values representing a list of
%                 pixels.
% Output: Rm = median red value 
%         Gm = median green value
%         Bm = median blue value
% Author: Callum Lee

% Find the median pixel values within each respective colour layer from the
% 3D array of pixels.
R = median([pixels(:,:,1)]);
G = median([pixels(:,:,2)]);
B = median([pixels(:,:,3)]);

% Convert each median value into 8-bit integers
Rm = uint8(R);
Gm = uint8(G);
Bm = uint8(B);

end