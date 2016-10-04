function [convolutionLayer] = convolutionLayer(image,filter,stride)

[r,c] = size(filter);
convolutionLayer = {};
for i = 1:c
    convolutionLayer{i} = convolution(image,filter{r,i},stride);
end

end