function [ poolingLayer ] = poolingLayer( convolutionLayer, window_size, stride )
% Max Pooling Layer
% mengembalikan PoolingLayer yang berisi nilai maximal dari setiap piksel
% ukuran window
% Window_size ukuran matrix untuk diambil nilai maksimal
% stride, merupakan step yang digunakan terhadap piksel
[r c] = size(convolutionLayer);
poolingLayer = {};
for i = 1:c
    poolingLayer{i} = pooling(convolutionLayer{r,i}, window_size, stride);
end

end

