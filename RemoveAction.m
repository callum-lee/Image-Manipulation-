function [actionRemoved] = RemoveAction(images)
% RemoveActionOptomized.m creates an image where the action is removed and
% uses the concepts of 4D arrays to concatenate images and find the median
% directly between the images.
% Input:  images = 1xn 1D cell array containing n images, where each 
%                  element is an RGB image
% Output: actionremoved = An RGB image that stacks the median RGB values
%                         corresponding to images
% Author: Callum Lee

% Concatenate the images together along the 4th dimension to create a 4D
% array called stackedImage
stackedImage = cat(4,images{:});

% Find the median of the stacked images through the 4th dimension in the 4D
% array and store it into the array actionRemoved
actionRemoved = median(stackedImage,4);

% Display the final image containing the median RGB values 
imshow(actionRemoved) 
