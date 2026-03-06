% 频率域去噪处理程序
close all; clear; clc;

% 读取原始图像和噪声图像
lena = imread('lena.bmp');
lena_noise = imread('lena_noise.bmp');

% 转换为灰度图像（如果是RGB图像）
if size(lena, 3) == 3
    lena = rgb2gray(lena);
end
if size(lena_noise, 3) == 3
    lena_noise = rgb2gray(lena_noise);
end

% 转换为double类型以便进行频率域处理
lena = double(lena);
lena_noise = double(lena_noise);

% 对原图像进行二维傅里叶变换
F_lena = fft2(lena);
F_lena_shifted = fftshift(F_lena); % 中心化
F_lena_log = log(1 + abs(F_lena_shifted)); % 对数变换以便于可视化

% 对噪声图像进行二维傅里叶变换
F_lena_noise = fft2(lena_noise);
F_lena_noise_shifted = fftshift(F_lena_noise); % 中心化
F_lena_noise_log = log(1 + abs(F_lena_noise_shifted)); % 对数变换以便于可视化

% 显示原图像和噪声图像
figure('Name', '原始图像和噪声图像');
subplot(2, 2, 1);
imshow(lena, []);
title('原始图像');

subplot(2, 2, 2);
imshow(lena_noise, []);
title('噪声图像');

subplot(2, 2, 3);
imshow(F_lena_log, []);
title('原始图像的傅里叶谱');

subplot(2, 2, 4);
imshow(F_lena_noise_log, []);
title('噪声图像的傅里叶谱');

% 分析两幅傅里叶谱图像的差异
[M, N] = size(lena);
% 频率域的中心点
centerM = floor(M/2) + 1;
centerN = floor(N/2) + 1;

% 设计带阻滤波器（Notch滤波器）
% 通过观察傅里叶谱，可以看到噪声图像的谱中有明显的高亮点
% 这些点对应的是周期性噪声
% 我们设计带阻滤波器来消除这些特定频率的噪声

% 创建滤波器
H = ones(M, N);

% 在傅里叶谱中识别噪声位置
% 根据观察，我们可以看到噪声主要体现在几个特定的高亮点上
% 带阻滤波器的参数
D0 = 10; % 带阻滤波器的带宽
% 噪声的位置（这些位置需要根据实际的噪声图像傅里叶谱来确定）
% 以下是一些假设的噪声位置
noise_points = [
    centerM+64, centerN;
    centerM-64, centerN;
    centerM, centerN+64;
    centerM, centerN-64;
];

% 应用带阻滤波器
for p = 1:size(noise_points, 1)
    y = noise_points(p, 1);
    x = noise_points(p, 2);
    for i = 1:M
        for j = 1:N
            d = sqrt((i-y)^2 + (j-x)^2);
            % 在噪声点周围创建一个窗口，值为0
            if d <= D0
                H(i, j) = 0;
            end
            % 由于傅里叶变换的对称性，我们也需要处理对称点
            d_sym = sqrt((i-(2*centerM-y))^2 + (j-(2*centerN-x))^2);
            if d_sym <= D0
                H(i, j) = 0;
            end
        end
    end
end

% 应用滤波器
G = F_lena_noise_shifted .* H; % 频域滤波
G_log = log(1 + abs(G)); % 对数变换以便于可视化

% 显示滤波器和滤波后的频谱
figure('Name', '滤波器和滤波后的频谱');
subplot(1, 3, 1);
imshow(H, []);
title('频率域滤波器 H');

subplot(1, 3, 2);
imshow(F_lena_noise_log, []);
title('噪声图像的傅里叶谱 F');

subplot(1, 3, 3);
imshow(G_log, []);
title('滤波后的频谱 H*F');

% 傅里叶反变换
G_ishifted = ifftshift(G); % 去中心化
g = real(ifft2(G_ishifted)); % 傅里叶反变换并取实部

% 显示滤波结果
figure('Name', '去噪结果');
subplot(1, 3, 1);
imshow(lena, []);
title('原始图像');

subplot(1, 3, 2);
imshow(lena_noise, []);
title('噪声图像');

subplot(1, 3, 3);
imshow(g, []);
title('去噪后的图像');

% 计算去噪效果
original_mse = mean((lena(:) - lena_noise(:)).^2);
denoised_mse = mean((lena(:) - g(:)).^2);
fprintf('原始图像与噪声图像的MSE: %.2f\n', original_mse);
fprintf('原始图像与去噪后图像的MSE: %.2f\n', denoised_mse);
fprintf('MSE改善: %.2f%%\n', 100 * (original_mse - denoised_mse) / original_mse);

% 保存结果供后续分析
imwrite(uint8(lena), 'lena_original.png');
imwrite(uint8(lena_noise), 'lena_noise.png');
imwrite(uint8(g), 'lena_denoised.png');