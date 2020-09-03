function [Rd,Gd,Bd] = MostDistantPixel(pixels)
% MostDistantPixel.m calculates the most distant pixels from the median RGB
% through a given list of pixels.
% Inputs: pixels = 1xnx3 3D array of RGB values representing a list of
%                  pixels.
% Output: Rd = most distant red value
%         Gd = most distant green value
%         Bd = most distant blue value
% Author: Callum Lee

% Find the median pixel from the MedianPixelFunction and store the
% variables into Rm, Gm and Bm
[Rm,Gm,Bm] = MedianPixel(pixels);

% Store the values into a 1x1x3 array as a point which will be called
% into the Pixel Distance Function as input P
medpix(1,1,1) = Rm;
medpix(1,1,2) = Gm;
medpix(1,1,3) = Bm;

% Find the number of columns for the input array (pixels)
[~,cols,~] = size(pixels);

% Set the initial step counter for the final array
x = 1;

% Step through the columns of the array calculating the pixel distance
for j = 1:cols
    d(x) = PixelDistance(medpix,pixels(:,j,:)); % Store the disance
    % into the array, d
    x = x+1; % Increase the step counter
end

% Find the column index with the maximum distance from the median
[~,colmax] = max(d);

% Find the most distant pixel values within each respective colour layer
% and convert all the values into uint8 format
Rd = uint8(pixels(:,colmax,1));
Gd = uint8(pixels(:,colmax,2));
Bd = uint8(pixels(:,colmax,3));