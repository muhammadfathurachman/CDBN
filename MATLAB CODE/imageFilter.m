function imageFiltering = imageFilter(image,filter_size,stride)
[row column] = size(image);
 row_iter = 1;
 col_iter = 1;
 imageFiltering = {};
 counter =  1;
lc = column-filter_size+1;
lr = row-filter_size+1;

for i = 1 : lr
    for j = 1 :lc
       %(col_iter+filter_size-1)
        imageFiltering{counter} = image(row_iter:(row_iter+filter_size-1),col_iter:(col_iter+filter_size-1));
        counter = counter + 1;
        if col_iter + filter_size - 1 <= column
           col_iter = col_iter + stride;
        end
    end
    if row_iter + filter_size - 1 <= row
       row_iter = row_iter + stride;
       col_iter = 1;
    end
end

end