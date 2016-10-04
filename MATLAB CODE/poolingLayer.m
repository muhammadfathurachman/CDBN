function [ poolingLayer ] = poolingLayer( convolutionLayer, window_size, stride )
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here

[r c] = size(convolutionLayer);
poolingLayer = {};

for i = 1:c
    poolingLayer{i} = pooling(convolutionLayer{r,i}, window_size, stride);
end
end

