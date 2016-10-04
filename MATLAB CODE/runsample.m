clear;
clc
load image_sample.mat
filter_size =  3;
stride = 1;
imageFilters = imageFiltering2(imageX,filter_size,stride);
convolutionLayer = convolutionLayer(imageX, imageFilters, stride);
reluLayer = reluLayer(convolutionLayer);
poolingLayer = poolingLayer(reluLayer,2,2);

