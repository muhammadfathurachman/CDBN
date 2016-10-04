
function [ pooling ] = pooling(reluLayer,window_size,stride )
%% reluLayer
%% window_size 2 or 3
%% stride usually 2
[row col] = size(reluLayer);
ic_bot = 1;
ic_top = window_size;
ir_bot = 1;
ir_top = window_size;
[newRow, newCol, reluLayer] =countIndex(reluLayer,window_size,stride);
pooling = zeros(newRow, newCol);

for i = 1: newRow
    for j = 1:newCol
        pooling(i,j)= max(mat2vec(reluLayer(ir_bot:ir_top, ic_bot:ic_top)));
        ic_bot = ic_bot+stride;
        ic_top = ic_top+stride;
    end
    ir_bot = ir_bot+stride;
    ir_top = ir_top+stride;
    ic_bot = 1;
    ic_top = window_size;
end
    
end

