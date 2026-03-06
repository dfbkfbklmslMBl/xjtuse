% 读取原始图像和带噪声图像
lena = imread('lena.bmp');
lena_noise = imread('lena_noise.bmp');

% 将图像转换为double类型便于处理
lena = double(lena);
lena_noise = double(lena_noise);

% 显示原始图像和带噪声图像
figure;
subplot(2,2,1);
imshow(lena, []);
title('原图');

subplot(2,2,2);
imshow(lena_noise, []);
title('噪声图');

% 计算两幅图像的二维傅里叶变换
F_lena = fft2(lena);
F_lena_noise = fft2(lena_noise);

% 将零频率分量移动到频谱中心（傅里叶谱中心化）
F_lena_shifted = fftshift(F_lena);
F_lena_noise_shifted = fftshift(F_lena_noise);

% 计算幅度谱并进行对数变换以增强可视化效果
magnitude_lena = log(1 + abs(F_lena_shifted));
magnitude_noise = log(1 + abs(F_lena_noise_shifted));

% 显示傅里叶谱图像
subplot(2,2,3);
imshow(magnitude_lena, []);
title('原图傅里叶谱');

subplot(2,2,4);
imshow(magnitude_noise, []);
title('噪声图傅里叶谱');

% 创建新图用于显示滤波设计和结果
figure;

% 分析频谱差异以识别噪声成分
diff_spectrum = magnitude_noise - magnitude_lena;
subplot(2,3,1);
imshow(diff_spectrum, []);
title('频谱差异');

% 获取图像尺寸
[M, N] = size(lena);

% 创建用于滤波器设计的坐标网格
[u, v] = meshgrid(-N/2:N/2-1, -M/2:M/2-1);

% 计算每个点到中心的距离
D = sqrt(u.^2 + v.^2);

% 方法1：使用自动检测的陷波滤波器
% 首先查找频谱差异图中的高亮点（噪声峰值）
diff_norm = (diff_spectrum - min(diff_spectrum(:))) / (max(diff_spectrum(:)) - min(diff_spectrum(:)));
threshold = 0.65;  % 调整此阈值以捕获更多噪声峰值
peaks = diff_norm > threshold;

% 检测峰值位置
[peak_rows, peak_cols] = find(peaks);

% 从图像中心坐标转换
center_row = ceil(M/2);
center_col = ceil(N/2);
peak_coords = [peak_cols - center_col, peak_rows - center_row];

% 去除中心附近的峰值（可能是DC分量）
center_margin = 5;
is_not_center = sum(abs(peak_coords), 2) > center_margin;
peak_coords = peak_coords(is_not_center, :);

% 初始化滤波器
H_notch = ones(M, N);

% 应用多个陷波滤波器
D0 = 4;  % 陷波宽度，可调整
n = 2;   % 巴特沃斯滤波器阶数

for i = 1:size(peak_coords, 1)
    u0 = peak_coords(i, 1);
    v0 = peak_coords(i, 2);
    
    % 计算到各陷波中心的距离
    D1 = sqrt((u - u0).^2 + (v - v0).^2);
    D2 = sqrt((u + u0).^2 + (v + v0).^2);  % 考虑对称性
    
    % 创建巴特沃斯陷波滤波器
    notch_filter = (1 ./ (1 + (D0^2 ./ (D1.^2 + 1e-6)).^n)) .* (1 ./ (1 + (D0^2 ./ (D2.^2 + 1e-6)).^n));
    
    % 累乘滤波器
    H_notch = H_notch .* notch_filter;
end

% 方法2：高斯低通滤波器
D0_gauss = 80;  % 较大的截止频率保留更多图像细节
H_gaussian = exp(-(D.^2) / (2 * D0_gauss^2));

% 方法3：理想低通滤波器
D0_ideal = 100;  % 截止频率
H_ideal = (D <= D0_ideal);

% 方法4：巴特沃斯低通滤波器
D0_butter = 80;  % 截止频率
n_butter = 4;    % 滤波器阶数
H_butter = 1 ./ (1 + (D ./ D0_butter).^(2 * n_butter));

% 方法5：组合滤波器（陷波+低通）
H_combined = H_notch .* H_butter;

% 选择当前使用的滤波器
% H = H_notch;     % 纯陷波滤波
% H = H_gaussian;  % 高斯低通
% H = H_ideal;     % 理想低通
% H = H_butter;    % 巴特沃斯低通
H = H_combined;  % 组合滤波器（推荐）

% 显示所选滤波器
subplot(2,3,2);
imshow(H, []);
title('滤波器 H');

% 在频域中对噪声图像应用滤波器
F_filtered = F_lena_noise_shifted .* H;

% 显示滤波后的频谱
subplot(2,3,3);
imshow(log(1 + abs(F_filtered)), []);
title('滤波后频谱 (H*F)');

% 傅里叶反变换得到滤波后的图像
F_filtered_shifted = ifftshift(F_filtered);
lena_filtered = real(ifft2(F_filtered_shifted));

% 显示结果
subplot(2,3,4);
imshow(lena, []);
title('原图');

subplot(2,3,5);
imshow(lena_noise, []);
title('噪声图');

subplot(2,3,6);
imshow(lena_filtered, []);
title('去噪后图像');

% 可选：进一步改善图像质量
% 可以尝试使用空域滤波器进一步平滑
% lena_filtered_enhanced = medfilt2(lena_filtered, [3 3]);  % 3x3中值滤波
% 或者尝试使用维纳滤波
% lena_filtered_enhanced = wiener2(lena_filtered, [5 5]);

% 计算评价指标
noise_mse = mean((lena(:) - lena_noise(:)).^2);
filtered_mse = mean((lena(:) - lena_filtered(:)).^2);

noise_psnr = 10 * log10(255^2 / noise_mse);
filtered_psnr = 10 * log10(255^2 / filtered_mse);

fprintf('噪声图像 MSE: %.2f, PSNR: %.2f dB\n', noise_mse, noise_psnr);
fprintf('滤波后图像 MSE: %.2f, PSNR: %.2f dB\n', filtered_mse, filtered_psnr);

% 保存结果
imwrite(uint8(lena_filtered), 'lena_denoised.bmp');

% 创建单独的图来清晰比较
figure;
subplot(1,3,1);
imshow(lena, []);
title('原图');

subplot(1,3,2);
imshow(lena_noise, []);
title('噪声图');

subplot(1,3,3);
imshow(lena_filtered, []);
title('去噪后图像');