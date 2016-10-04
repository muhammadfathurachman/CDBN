function [ reluLayer ] = ReLU(convLayer )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
[row col] = size(convLayer);
reluLayer = zeros(row,col);
for i = 1:row
    for j = 1:col
        reluLayer(i,j) = max(0,convLayer(i,j));
    end
end
end

