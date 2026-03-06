% 请同学们参照附件一，完成main.m, im2jpeg.m和jpeg2im.m三个函数的编程
function im_recovered = jpeg2im(jpeg_data)
% JPEG2IM 将JPEG压缩后的数据解压缩为图像
% 输入参数：
%   jpeg_data: 由im2jpeg函数生成的压缩数据结构体
% 输出参数：
%   im_recovered: 解压缩后的图像

% 提取压缩数据中的信息
huffman_code = jpeg_data.huffman;
Q = jpeg_data.quant_table;
padded_size = jpeg_data.padded_size;
original_size = jpeg_data.original_size;

% 解码霍夫曼编码
dct_coef = huff2mat(huffman_code);

% 创建DCT变换矩阵
T = dctmtx(8);

% 初始化解压缩后的图像
padded_im = zeros(padded_size);

% 对每个8x8块进行反量化和IDCT变换
for i = 1:8:padded_size(1)
    for j = 1:8:padded_size(2)
        % 提取当前8x8块的量化DCT系数
        quant_block = dct_coef(i:i+7, j:j+7);
        
        % 反量化
        dct_block = quant_block .* Q;
        
        % 进行IDCT变换
        block = T' * dct_block * T;
        
        % 存储解压缩后的块
        padded_im(i:i+7, j:j+7) = block;
    end
end

% 加回128（恢复原始值范围）
padded_im = padded_im + 128;

% 裁剪到原始尺寸
im_recovered = padded_im(1:original_size(1), 1:original_size(2));

% 确保像素值在有效范围内
im_recovered = uint8(max(0, min(255, round(im_recovered))));
end