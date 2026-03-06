% 清空工作区和命令窗口
clear;
clc;
% 获取当前脚本所在目录
current_dir = fileparts(mfilename('fullpath'));
addpath(fullfile(current_dir, 'Dark-Channel-Haze-Removal-master'));
addpath(fullfile(current_dir, 'Data'));
addpath(fullfile(current_dir, 'utilities'));

data_path = fullfile(current_dir, 'Data');
image_pairs = {
    {'forest.jpg', 'forest_recovered.jpg', 'Forest'},
    {'50_hazy.png', '50_GT.png', 'NH50'},
    {'46_hazy.png', '46_GT.png', 'NH46'},
    {'53_hazy.png', '53_GT.png', 'NH53'}
};
% 对每对图像进行处理
for i = 1:length(image_pairs)
    % 读取图像
    hazy_img = imread(fullfile(data_path, image_pairs{i}{1}));%读取有雾图像
    gt_img = imread(fullfile(data_path, image_pairs{i}{2}));% 读取无雾参考图像
    img_name = image_pairs{i}{3};
    
    % 调整图像大小
    scale = 0.5; % 所有图像统一使用 0.5 的缩放比例
    hazy_img = imresize(hazy_img, scale);
    gt_img = imresize(gt_img, scale);
    
    % 转换为HSI空间
    hazy_hsi = rgb2hsi(hazy_img);
    gt_hsi = rgb2hsi(gt_img);
    
    % 提取I通道
    hazy_I = hazy_hsi(:,:,3);
    gt_I = gt_hsi(:,:,3);
    
    % 1. 直方图均衡化
    tic;
    histeq_I = histeq(hazy_I);
    histeq_time = toc;
    
    % 2. 直方图规定化
    tic;
    % 计算目标图像的直方图
    target_hist = imhist(gt_I);
    % 使用目标直方图进行规定化
    histsp_I = histeq(hazy_I, target_hist);
    histsp_time = toc;
    
    % 3. 暗通道先验算法
    tic;
    dark_channel_result = dark_channel_dehaze(hazy_img);
    dark_channel_time = toc;
    
    % 转换暗通道结果到HSI空间并提取I通道
    dark_channel_hsi = rgb2hsi(dark_channel_result);
    dark_channel_I = dark_channel_hsi(:,:,3);
    
    % 计算评价指标
    % 原始有雾图像 vs 无雾图像
    original_rmse = rmse(hazy_I, gt_I) * 255;
    original_psnr = psnr(hazy_I, gt_I);
    original_ssim = ssim(hazy_I, gt_I);

    % 直方图均衡化
    histeq_rmse = rmse(histeq_I, gt_I) * 255;
    histeq_psnr = psnr(histeq_I, gt_I);
    histeq_ssim = ssim(histeq_I, gt_I);
    
    % 直方图规定化
    histsp_rmse = rmse(histsp_I, gt_I) * 255;
    histsp_psnr = psnr(histsp_I, gt_I);
    histsp_ssim = ssim(histsp_I, gt_I);
    
    % 暗通道先验
    dark_channel_rmse = rmse(dark_channel_I, gt_I) * 255;
    dark_channel_psnr = psnr(dark_channel_I, gt_I);
    dark_channel_ssim = ssim(dark_channel_I, gt_I);
    
    % 显示结果
    figure('Name', img_name, 'NumberTitle', 'off');
    
    % 显示原图
    subplot(2,5,1);
    imshow(hazy_img);
    title('有雾原图');
    subplot(2,5,6);
    imhist(uint8(hazy_I * 255));
    title('有雾原图直方图');
    
    % 显示Ground Truth
    subplot(2,5,2);
    imshow(gt_img);
    title('无雾原图');
    subplot(2,5,7);
    imhist(uint8(gt_I * 255));
    title('无雾原图直方图');
    
    % 显示直方图均衡化结果
    subplot(2,5,3);
    histeq_result = cat(3, hazy_hsi(:,:,1), hazy_hsi(:,:,2), histeq_I);
    histeq_result = hsi2rgb(histeq_result);
    imshow(histeq_result);
    title('直方图均衡化');
    subplot(2,5,8);
    imhist(uint8(histeq_I * 255));
    title('直方图均衡化直方图');
    
    % 显示直方图规定化结果
    subplot(2,5,4);
    histsp_result = cat(3, hazy_hsi(:,:,1), hazy_hsi(:,:,2), histsp_I);
    histsp_result = hsi2rgb(histsp_result);
    imshow(histsp_result);
    title('直方图规定化');
    subplot(2,5,9);
    imhist(uint8(histsp_I * 255));
    title('直方图规定化直方图');
    
    % 显示暗通道先验结果
    subplot(2,5,5);
    imshow(dark_channel_result);
    title('暗通道先验');
    subplot(2,5,10);
    imhist(uint8(dark_channel_I * 255));
    title('暗通道先验直方图');
    
    % 打印评价指标
    fprintf('\n%s 图像的评价指标 (Rescaled: %.1f)：\n', img_name, scale);
    fprintf('\t\t方法\t\tRMSE\t\tPSNR\t\tSSIM\tTime\n');
    fprintf('原始图像(Original)\t%.3f\t\t%.2f\t\t%.3f\n', original_rmse, original_psnr, original_ssim);
    fprintf('直方图均衡化(HistEq)\t%.3f\t\t%.2f\t\t%.3f\t\t%.3f s\n', histeq_rmse, histeq_psnr, histeq_ssim, histeq_time);
    fprintf('直方图规定化(HistSp)\t%.3f\t\t%.2f\t\t%.3f\t\t%.3f s\n', histsp_rmse, histsp_psnr, histsp_ssim, histsp_time);
    fprintf('暗通道先验(HistSp)\t%.3f\t\t%.2f\t\t%.3f\t\t%.3f s\n', dark_channel_rmse, dark_channel_psnr, dark_channel_ssim, dark_channel_time);
end

% 暗通道去雾函数
function result = dark_channel_dehaze(img)
    % 调用暗通道先验算法的dehaze函数
    % dehaze 函数需要输入图像的值在 [0, 1] 范围内
    img_double = double(img) / 255;
    
    % 调用 dehaze 函数，这里的参数 0.95 和 15 是 demo.m 中使用的默认值
    dehazed_img_double = dehaze(img_double, 0.95, 15);
    
    % 将结果转换回 uint8 类型 [0, 255]
    result = uint8(dehazed_img_double * 255);
end 