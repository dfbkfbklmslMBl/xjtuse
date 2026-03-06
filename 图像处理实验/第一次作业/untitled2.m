% 读取图像
img = imread('001.png');

% 转换为灰度图像
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end

% 计算原图的直方图
hist_original = zeros(1, 256);
[rows, cols] = size(img_gray);
for i = 1:rows
    for j = 1:cols
        pixel_val = img_gray(i, j) + 1; % 因为索引从 1 开始
        hist_original(pixel_val) = hist_original(pixel_val) + 1;
    end
end

% 计算累积分布函数（CDF）
cdf = cumsum(hist_original) / (rows * cols);

% 进行直方图均衡化
img_eq = uint8(zeros(rows, cols));
for i = 1:rows
    for j = 1:cols
        pixel_val = img_gray(i, j) + 1;
        img_eq(i, j) = uint8(255 * cdf(pixel_val));
    end
end

% 计算均衡化后图像的直方图
hist_eq = zeros(1, 256);
for i = 1:rows
    for j = 1:cols
        pixel_val = img_eq(i, j) + 1;
        hist_eq(pixel_val) = hist_eq(pixel_val) + 1;
    end
end

% 绘制原图及其直方图
subplot(2,2,1);
imshow(img_gray);
title('原图');
subplot(2,2,2);
bar(0:255, hist_original);
title('原图直方图');

% 绘制均衡化后的图像及其直方图
subplot(2,2,3);
imshow(img_eq);
title('直方图均衡化后的图像');
subplot(2,2,4);
bar(0:255, hist_eq);
title('均衡化后图像的直方图');