function [FrameList] = GenerateFrameList(start,step,n)
% GenerateFrameList.m generates a list of frames to be used for the action
% removal or action shots. 
% Inputs: start = starting frame number
%         step  = step size
%         n     = number of frames to generate
% Output: FrameList = 1xn 1D array of frames
% Author: Callum Lee

% Find the stop value for the frames
stop = start+(n-1).*step;

% Create an array using linspace function
FrameList = linspace(start,stop,n);

end

