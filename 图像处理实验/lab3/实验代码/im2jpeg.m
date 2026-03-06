% 请同学们参照附件一，完成main.m, im2jpeg.m和jpeg2im.m三个函数的编程
function output = im2jpeg(im, quality)
% IM2JPEG 将图像进行JPEG压缩
% 输入参数：
%   im: 输入图像（灰度图）
%   quality: 压缩质量参数，范围[1, 100]，值越大质量越高
% 输出参数：
%   output: 包含压缩后数据的结构体

% 检查输入参数
if nargin < 2
    quality = 50; % 默认质量参数
end

% 确保图像是灰度图
if size(im, 3) > 1
    im = rgb2gray(im);
end

% 将图像转换为double类型并减去128（使值范围为-128到127）
im = double(im) - 128;

% 获取图像尺寸
[m, n] = size(im);

% 计算需要填充的行数和列数，使其能被8整除
pad_rows = mod(8 - mod(m, 8), 8);
pad_cols = mod(8 - mod(n, 8), 8);

% 填充图像
padded_im = padarray(im, [pad_rows, pad_cols], 'replicate', 'post');

% 获取填充后的图像尺寸
[padded_m, padded_n] = size(padded_im);

% 创建DCT变换矩阵
T = dctmtx(8);

% 创建标准JPEG量化表
Q50 = [
    16  11  10  16  24  40  51  61;
    12  12  14  19  26  58  60  55;
    14  13  16  24  40  57  69  56;
    14  17  22  29  51  87  80  62;
    18  22  37  56  68 109 103  77;
    24  35  55  64  81 104 113  92;
    49  64  78  87 103 121 120 101;
    72  92  95  98 112 100 103  99
];

% 根据质量参数调整量化表
if quality < 50
    q = 5000 / quality;
else
    q = 200 - 2 * quality;
end

Q = floor((q * Q50 + 50) / 100);
Q(Q < 1) = 1; % 确保量化系数不小于1

% 初始化DCT系数矩阵
dct_coef = zeros(padded_m, padded_n);

% 对每个8x8块进行DCT变换和量化
for i = 1:8:padded_m
    for j = 1:8:padded_n
        % 提取当前8x8块
        block = padded_im(i:i+7, j:j+7);
        
        % 进行DCT变换
        dct_block = T * block * T';
        
        % 量化
        quant_block = round(dct_block ./ Q);
        
        % 存储量化后的DCT系数
        dct_coef(i:i+7, j:j+7) = quant_block;
    end
end

% 使用霍夫曼编码压缩量化后的DCT系数
huffman_code = mat2huff(dct_coef);

% 创建输出结构体
output = struct();
output.huffman = huffman_code;
output.quant_table = Q;
output.padded_size = [padded_m, padded_n];
output.original_size = [m, n];
output.quality = quality;
end