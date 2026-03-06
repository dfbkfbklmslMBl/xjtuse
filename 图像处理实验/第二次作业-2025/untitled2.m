% 读取图像
original_img = imread('lena.bmp');
noisy_img = imread('lena_noise.bmp');

% 计算傅里叶谱图像（中心化以及对数变换）
F_original = fft2(original_img);
F_original = fftshift(F_original);
F_original = log(1 + abs(F_original));

F_noisy = fft2(noisy_img);
F_noisy = fftshift(F_noisy);
F_noisy = log(1 + abs(F_noisy));

% 显示原图及有噪声图像的傅里叶谱图像
figure;
subplot(2,2,1);
imshow(original_img, []);
title('原图');
subplot(2,2,2);
imshow(noisy_img, []);
title('有噪声图像');
subplot(2,2,3);
imshow(F_original, []);
title('原图的傅里叶谱图像');
subplot(2,2,4);
imshow(F_noisy, []);
title('有噪声图像的傅里叶谱图像');

% 分析两幅图像傅里叶谱图像F的不同
% 有噪声图像的傅里叶谱图像中存在高亮点，这些高亮点对应着噪声的频率成分

% 选择频率域滤波器（这里选择理想低通滤波器）
% 原因：理想低通滤波器可以保留低频成分，滤除高频成分，而噪声通常集中在高频部分
[M, N] = size(noisy_img);
D0 = 30; % 截止频率
u = 0:(M-1);
v = 0:(N-1);
idx = find(u > M/2);
u(idx) = u(idx) - M;
idy = find(v > N/2);
v(idy) = v(idy) - N;
[V, U] = meshgrid(v, u);
D = sqrt(U.^2 + V.^2);
H = double(D <= D0); % 理想低通滤波器

% 显示频率域滤波器H
figure;
imshow(H, []);
title('理想低通滤波器H');

% 计算H*F
F_filtered = H .* F_noisy;

% 显示H*F
figure;
imshow(F_filtered, []);
title('H*F');

% 进行傅里叶反变换（记得去中心化和取实部）
F_filtered = ifftshift(F_filtered);
filtered_img = ifft2(F_filtered);
filtered_img = real(filtered_img);

% 显示滤波后空域图的效果（去噪以后的图像）
figure;
imshow(uint8(filtered_img), []);
title('去噪以后的图像');