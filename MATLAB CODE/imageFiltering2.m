function imageFilters = imageFiltering2(image, filter_size, stride)
[row col] = size(image);
ir_bot=1;
ic_bot=1;
ir_up = filter_size;
ic_up = filter_size;

imageFilters = {};
counter = 1;
bol_row = 0;
bol_col = 0;

while bol_row == 0
    while bol_col == 0
        imageFilters{counter} = image(ir_bot:ir_up, ic_bot:ic_up);
        counter = counter+1;
        if ic_up + stride <= col
           ic_up = ic_up + stride;
           ic_bot = ic_bot + stride;
        elseif ic_up + stride > col
            bol_col = 1;
        end
    end
    if ir_up + stride <= row
        ic_up = filter_size;
        ic_bot = 1;
        ir_bot = ir_bot+stride;
        ir_up = ir_up+stride;
        bol_col = 0;
    elseif ir_up + stride > row
            bol_row = 1;
    end
end

end