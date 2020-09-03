function [actionImage] = ActionShot(images)
% ActionShot.m creates an image where the action is combined together from
% different images by finding the most distant RGB values from the median
% Input:  images = 1xn 1D cell array containing n images, where each 
%                  element is an RGB image
% Output: actionImage = An RGB image that stacks the most distant RGB
%                       values from the median corresponding to images
% Author: Callum Lee

% Find the number of rows and columns of the image array
[rows,cols,~]=size(images{1});

% Set up a triple nested loop that scans through all the rows, columns and
% layers of pixels and finds the most distant values from the median
for i = 1:rows
    for j = 1:cols
        for k = 1:length(images)
            pixels(1,k,:) = images{k}(i,j,:);  % Extract the pixel values 
                                               % of each image    
            [Rd,Gd,Bd] = MostDistantPixel(pixels); % Find the most distant 
                                                   % pixel values
            actionImage(i,j,:) = [Rd,Gd,Bd]; % Store the most distant 
                                             % values into a 3D array
        end
    end
end

% Display the final image containing the most distant RGB values
imshow(actionImage)
