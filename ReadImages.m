function [pictures] = ReadImages(directory,file)
% ReadImages.m reads in a list of images given the location of the 
% filenames and directory
% Inputs: directory = string containing the name of the directory of images
%         file      = 1xn 1D cell array containing n strings of filenames
% Output: pictures  = 1xnx1D cell array storing RGB values in each cell
% Author: Callum Lee

% Find the path of the directory that the files are located in
f = what(directory);

% Create a loop that locates and reads each image and stores it into an
% array
for i = 1:length(file) % Scan through the entire input array for files
    locat = [f.path,'\',file{i}]; % Find the location of the file's path 
    imgread = imread(locat); % Read each image for its RGB values
    pictures{i} = [imgread]; % Store the RGB values into an output array
end



