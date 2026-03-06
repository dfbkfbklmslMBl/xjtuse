% 频率域图像去噪处理 - 针对BMP灰度图像
clear all;
close all;

% 读取原始图像和噪声图像
original_img = imread('lena.bmp');
noisy_img = imread('lena_noise.bmp');

% BMP格式的图像已经是灰度图，直接转换为double类型
original_img = double(original_img);
noisy_img = double(noisy_img);

% 计算傅里叶变换
F_original = fft2(original_img);
F_noisy = fft2(noisy_img);

% 中心化傅里叶变换结果
F_original_shifted = fftshift(F_original);
F_noisy_shifted = fftshift(F_noisy);

% 计算对数幅度谱以便于可视化
log_F_original = log(1 + abs(F_original_shifted));
log_F_noisy = log(1 + abs(F_noisy_shifted));

% 设计频率域滤波器 - 陷波滤波器（Notch Filter）
% 获取图像大小
[M, N] = size(noisy_img);
H = ones(M, N);

% 图像中心点
center_x = floor(M/2) + 1;
center_y = floor(N/2) + 1;

% 从频谱可以看出，噪声主要集中在某些特定频率点
% 根据频谱图中的高亮点位置设置滤波器的陷波点
% 以下参数需要根据实际频谱调整
noise_points = [
    % [x偏移, y偏移, 陷波半径]
    [100, 0, 5],
    [-100, 0, 5],
    [0, 100, 5],
    [0, -100, 5]
    % 根据实际频谱可能需要添加更多噪声点
];

% 应用陷波滤波器
for i = 1:size(noise_points, 1)
    x_offset = noise_points(i, 1);
    y_offset = noise_points(i, 2);
    radius = noise_points(i, 3);
    
    % 创建网格
    [X, Y] = meshgrid(1:N, 1:M);
    
    % 计算距离
    distance = sqrt((X - (center_y + y_offset)).^2 + (Y - (center_x + x_offset)).^2);
    
    % 设置陷波点
    H(distance <= radius) = 0;
    
    % 对称点也要处理
    distance = sqrt((X - (center_y - y_offset)).^2 + (Y - (center_x - x_offset)).^2);
    H(distance <= radius) = 0;
end

% 应用滤波器到频域
filtered_F = F_noisy_shifted .* H;

% 计算滤波后的频谱的对数幅度
filtered_F_log = log(1 + abs(filtered_F));

% 逆变换回空域
% 先取消中心化
filtered_F_unshifted = ifftshift(filtered_F);
% 逆傅里叶变换
filtered_img = ifft2(filtered_F_unshifted);
% 取实部
filtered_img = real(filtered_img);

% 创建一个图窗口来显示所有结果
figure('Position', [100, 100, 1200, 800]);

% 第一行：显示原始图像、噪声图像和滤波后图像
subplot(3, 3, 1);
imshow(original_img, []);
title('原图');

subplot(3, 3, 2);
imshow(noisy_img, []);
title('含噪声图像');

subplot(3, 3, 3);
imshow(filtered_img, []);
title('滤波后的图像');

% 第二行：显示对应的傅里叶谱
subplot(3, 3, 4);
imshow(log_F_original, []);
title('原图的傅里叶谱');

subplot(3, 3, 5);
imshow(log_F_noisy, []);
title('噪声图像的傅里叶谱');

subplot(3, 3, 6);
imshow(filtered_F_log, []);
title('H*F (滤波后的频谱)');

% 第三行：显示滤波器和评估指标
subplot(3, 3, 7);
imshow(H, []);
title('频率域滤波器 H');

% 计算MSE和PSNR
mse = sum((original_img(:) - filtered_img(:)).^2) / numel(original_img);
psnr = 10 * log10(255^2 / mse);

% 在第三行显示评估指标
subplot(3, 3, 8);
text(0.1, 0.6, ['MSE: ', num2str(mse)], 'FontSize', 12);
text(0.1, 0.4, ['PSNR: ', num2str(psnr), ' dB'], 'FontSize', 12);
axis off;
title('评估指标');

% 第三行第三列：噪声滤除效果
subplot(3, 3, 9);
filter_effect = abs(filtered_img - original_img);
imshow(filter_effect, []);
title('滤波结果与原图差异');

% 添加总标题
sgtitle('图像频率域去噪处理结果');

% 为了更好地看到噪声频谱的细节，可以额外创建一个放大的视图
figure('Position', [100, 100, 500, 400]);
imshow(log_F_noisy, []);
title('含噪声图像的傅里叶谱 (详细查看)');