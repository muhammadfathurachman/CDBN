image = [-1 -1 -1 -1 -1 -1 -1 -1 -1;...
        -1 1 -1 -1 -1 -1 -1 1 -1;...
        -1 -1 1 -1 -1 -1 1 -1 -1;...
        -1 -1 -1 1 -1 1 -1 -1 -1;...
        -1 -1 -1 -1 1 -1 -1 -1 -1;...
        -1 -1 -1 1 -1 1 -1 -1 -1;...
        -1 -1 1 -1 -1 -1 1 -1 -1;...
        -1 1 -1 -1 -1 -1 -1 1 -1;...
        -1 -1 -1 -1 -1 -1 -1 -1 -1];


[r c] = size(image);
filter_size = 3;

f_c = c/filter_size;
f_r = r/filter_size;
hidden_filter = zeros(1,f_c);
hidden_filter(:,:) = 3;
filter = mat2cell(image,hidden_filter(1,:),hidden_filter(1,:));
[fil_r, fil_c] = size(filter);
conSize = (r - filter_size) + 1
conLayer = zeros(conSize,conSize);

row_counter = 1;
col_counter = 1;
move = 3;

conL = {};
for fil = 1 : fil_r
    filter{fil}
    for i=1:conSize
        for j = 1: conSize
            A = mat2vec(image(row_counter:row_counter+move-1,...
            col_counter:col_counter+move-1));
            temp = filter{fil};
            temp = mat2vec(temp);
            conLayer(i,j) = (A*temp')/(filter_size*filter_size);
            if (col_counter + filter_size) < c
                col_counter = col_counter + filter_size;
            end
        end
        if (row_counter + filter_size) < r
            row_counter = row_counter+filter_size;
        end
    end
    conL{fil} = conLayer;
    
end
clear row_counter filter_size r c temp A col_counter  i j move
clear fil_r fil_c hidden_filter f_c f_r conLayer fil conSize



