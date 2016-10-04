function [row, col, imageReconst] = countIndex(image, window_size, stride)
row = 1;
col = 1;
[r c] =  size(image);
rw  = window_size;
cw = window_size;
ic_top = cw;
ir_top = rw;

BARIS = false;
KOLOM = false;
padding_row = 0;
padding_col = 0;

% Hitung jumlah Index baris;
while BARIS == false
    if ir_top == r
        BARIS = true;
    elseif ir_top + stride == r
        row = row+1;
        ir_top = ir_top+stride;
        BARIS = true;
    elseif ir_top + stride < r
        row = row+1;
        ir_top = ir_top+stride;
    elseif ir_top + stride > r
        row = row + 1;
        padding_row = (ir_top+stride)-r;
        ir_top = ir_top+stride;
        BARIS =true;
    end
end

while KOLOM == false
    if ic_top == c
        KOLOM = true;
    elseif ic_top + stride == c
        col = col+1;
        ic_top = ic_top+stride;
        KOLOM = true;
    elseif ic_top + stride < c
        col = col+1;
        ic_top = ic_top + stride;
    elseif ic_top + stride > c
        col = col+1;
        padding_col = (ic_top+stride)-c;
        ic_top = ic_top+stride;
        KOLOM = true;
    end
end

% add Padding into layer;

imageReconst = zeros(r+padding_row, c+padding_col);
imageReconst(1:r,1:c) = image;

end