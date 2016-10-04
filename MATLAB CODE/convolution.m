function [ convolutionMatrix ] = convolution( image, filter, stride)
%UNTITLED5 
%   Detailed explanation goes here
[row_im col_im] =  size(image);
[row_fil col_fil] = size(filter);
convSize = (row_im - row_fil + 1);

convolutionMatrix = zeros(convSize,convSize);
row_bot = 1;
col_bot = 1;
row_up = row_fil;
col_up = col_fil;

for i = 1 : convSize
    for j = 1 : convSize
     A =  mat2vec(image(row_bot:row_up, col_bot:col_up));
     B =  mat2vec(filter);
        convolutionMatrix(i,j) = (A*B')/(row_fil*col_fil);
    if  col_up + stride <= col_im
        col_up = col_up+stride;
        col_bot = col_bot+stride;
    end
    end
    if row_up + stride <= row_im
        row_up = row_up+stride;
        row_bot = row_bot + stride;
        col_bot = 1;
        col_up = col_fil;
    end
end
end

