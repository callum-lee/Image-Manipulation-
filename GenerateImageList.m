function [filename] = GenerateImageList(directory,extension)
% GenerateImageList.m finds the list of images containing the same file 
% extension in a directory and stores it into an array
% Inputs: directory = string containing the name of the directory of images
%         extension = string containing the particular extension of images
% Output: filename  = 1xn 1D array containing the filenames of the images
%                     with the particular extension
% Author: Callum Lee

% Find the structural array of the directory containing the images
a = dir(directory);

% Set an initial condition for the final array (j=columns)
j = 1;

% Set up a for loop for all the files
for i = 1:length(a) % Step through the entire length of the array
    name = a(i).name; % Find the file names from the structural array
    if strfind(name,strcat('.',extension))>0 % Find the filenames with the
                                             % extension name
        filename{j} = [name]; % Store it into a 1D array
        j = j+1; % Increase step counter
    end
end
 
    