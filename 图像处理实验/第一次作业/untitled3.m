% 读取原图像和参考图像
original_img = imread('original.bmp');
reference_img = imread('reference.jpg');

% 转换为灰度图像
if size(original_img, 3) == 3
    original_gray = rgb2gray(original_img);
else
    original_gray = original_img;
end

if size(reference_img, 3) == 3
    reference_gray = rgb2gray(reference_img);
else
    reference_gray = reference_img;
end

% 计算原图像和参考图像的直方图
original_hist = zeros(1, 256);
reference_hist = zeros(1, 256);

[original_rows, original_cols] = size(original_gray);
[reference_rows, reference_cols] = size(reference_gray);

% 计算原图像直方图
for i = 1:original_rows
    for j = 1:original_cols
        pixel_val = original_gray(i, j) + 1;
        original_hist(pixel_val) = original_hist(pixel_val) + 1;
    end
end

% 计算参考图像直方图
for i = 1:reference_rows
    for j = 1:reference_cols
        pixel_val = reference_gray(i, j) + 1;
        reference_hist(pixel_val) = reference_hist(pixel_val) + 1;
    end
end

% 计算原图像和参考图像的累积分布函数（CDF）
original_cdf = cumsum(original_hist) / (original_rows * original_cols);
reference_cdf = cumsum(reference_hist) / (reference_rows * reference_cols);

% 进行直方图匹配
matched_img = uint8(zeros(original_rows, original_cols));
for i = 1:original_rows
    for j = 1:original_cols
        pixel_val = original_gray(i, j) + 1;
        % 找到参考图像 CDF 中最接近原图像 CDF 当前值的位置
        [~, index] = min(abs(reference_cdf - original_cdf(pixel_val)));
        % 将原图像像素映射到参考图像的对应灰度值
        matched_img(i, j) = index - 1;
    end
end

% 计算匹配后图像的直方图
matched_hist = zeros(1, 256);
for i = 1:original_rows
    for j = 1:original_cols
        pixel_val = matched_img(i, j) + 1;
        matched_hist(pixel_val) = matched_hist(pixel_val) + 1;
    end
end

% 绘制原图、匹配图像、匹配后的图像及其各自直方图
subplot(3, 2, 1);
imshow(original_gray);
title('原图');

subplot(3, 2, 2);
bar(0:255, original_hist);
title('原图直方图');

subplot(3, 2, 3);
imshow(reference_gray);
title('匹配图像');

subplot(3, 2, 4);
bar(0:255, reference_hist);
title('匹配图像直方图');

subplot(3, 2, 5);
imshow(matched_img);
title('匹配后的图像');

subplot(3, 2, 6);
bar(0:255, matched_hist);
title('匹配后图像的直方图');