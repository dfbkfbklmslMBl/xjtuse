% 频率域去噪处理
clear all;
close all;
clc;

% 读取图像
lena = im2double(imread('lena.bmp'));
lena_noise = im2double(imread('lena_noise.bmp'));

% 确保图像是灰度图
if size(lena, 3) > 1
    lena = rgb2gray(lena);
end
if size(lena_noise, 3) > 1
    lena_noise = rgb2gray(lena_noise);
end

% 计算傅里叶频谱
[M, N] = size(lena);
F_lena = fft2(lena);
F_lena_shifted = fftshift(F_lena); % 中心化
F_lena_log = log(1 + abs(F_lena_shifted)); % 对数变换，增强可视化效果

F_noise = fft2(lena_noise);
F_noise_shifted = fftshift(F_noise); % 中心化
F_noise_log = log(1 + abs(F_noise_shifted)); % 对数变换

% 显示原始图像和噪声图像及其傅里叶谱
figure;
subplot(2, 2, 1);
imshow(lena, []);
title('原图');
subplot(2, 2, 2);
imshow(F_lena_log, []);
title('原图的傅里叶频谱');
subplot(2, 2, 3);
imshow(lena_noise, []);
title('有噪声图像');
subplot(2, 2, 4);
imshow(F_noise_log, []);
title('噪声图像的傅里叶频谱');

% 设置截止频率和阶数
D0 = 80; % 根据噪声情况调整
n = 2;   % 布特沃斯滤波器的阶数

% 创建布特沃斯低通滤波器
H_BLPF = zeros(M, N);
for u = 1:M
    for v = 1:N
        D = sqrt((u - M/2)^2 + (v - N/2)^2);
        H_BLPF(u, v) = 1 / (1 + (D/D0)^(2*n));
    end
end

% 显示布特沃斯低通滤波器
figure;
imshow(H_BLPF, []);
title('布特沃斯低通滤波器');

% 应用滤波器
G_BLPF = F_noise_shifted .* H_BLPF;

% 显示滤波后的频谱
figure;
imshow(log(1 + abs(G_BLPF)), []);
title('布特沃斯低通滤波后的频谱 (H*F)');

% 反变换回空间域
g_BLPF = real(ifft2(ifftshift(G_BLPF)));

% 显示滤波后的空间域图像
figure;
subplot(1, 2, 1);
imshow(lena_noise, []);
title('有噪声图像');
subplot(1, 2, 2);
imshow(g_BLPF, []);
title('布特沃斯低通滤波后的图像');
    