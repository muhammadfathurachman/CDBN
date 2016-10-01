function vector = mat2vec(matrix)
matrix = matrix';
s = size(matrix);
t = s(1)*s(2);
vector = reshape(matrix,t,1)';
end