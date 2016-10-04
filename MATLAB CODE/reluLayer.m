function [ reluLayer ] = reluLayer( convolutionLayer )
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
[r,c] = size(convolutionLayer);
reluLayer = {};
for i = 1:c
    reluLayer{i} = ReLU(convolutionLayer{r,i});
end
end

