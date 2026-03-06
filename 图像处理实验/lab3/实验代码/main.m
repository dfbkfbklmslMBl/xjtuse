% 请同学们参照附件一，完成main.m, im2jpeg.m和jpeg2im.m三个函数的编程
% JPEG图像压缩实验主程序

% 清空工作区和关闭所有图像
clear all;
close all;
clc;

% 添加Utilities文件夹到路径
addpath('Utilities');

% 定义图像路径
image_paths = {
    'Data/Girl_1.bmp',
    'Data/Girl_2.bmp',
    'Data/Light.bmp',
    'Data/Dusk.bmp'
};

% 定义图像名称
image_names = {'Girl_1', 'Girl_2', 'Light', 'Dusk'};

% 定义目标PSNR和SSIM值
target_psnr = [36.85, 40.60, 40.45, 29.52];
target_ssim = [0.935, 0.970, 0.978, 0.878];

% 创建结果表格
results = cell(4, 6);

% 处理每张图像
for i = 1:length(image_paths)
    % 读取图像
    img = imread(image_paths{i});
    
    % 转换为灰度图
    if size(img, 3) > 1
        img_gray = rgb2gray(img);
    else
        img_gray = img;
    end
    
    % 获取图像尺寸
    [height, width] = size(img_gray);
    
    % 记录原始图像尺寸（字节数）
    original_size = height * width;
    
    % 寻找最优质量参数
    best_quality = find_best_quality(img_gray, target_psnr(i), target_ssim(i));
    
    % 使用最优参数进行JPEG压缩
    jpeg_data = im2jpeg(img_gray, best_quality);
    
    % 解压缩图像
    recovered_img = jpeg2im(jpeg_data);
    
    % 计算压缩后尺寸
    code = jpeg_data.huffman.code;
    info_code = whos('code');
    compressed_size = info_code.bytes;
    
    % 计算压缩率 (按照实验要求使用imratio函数)
    % 实验要求：调用该函数时需要把原图像放在参数第一参数位，霍夫曼编码序列放在第二参数位
    cr = imratio(img_gray, code);
    
    % 计算PSNR和SSIM
    % 将图像归一化到[0,1]范围
    norm_img_gray = double(img_gray) / 255;
    norm_recovered_img = double(recovered_img) / 255;
    
    psnr_value = psnr(norm_recovered_img, norm_img_gray);
    ssim_value = ssim(norm_recovered_img, norm_img_gray);
    
    % 存储结果
    results{i, 1} = original_size;
    results{i, 2} = compressed_size;
    results{i, 3} = cr;
    results{i, 4} = psnr_value;
    results{i, 5} = ssim_value;
    results{i, 6} = best_quality;
    
    % 显示图像
    figure;
    subplot(1, 2, 1);
    imshow(img_gray);
    title(['原始图像: ', image_names{i}]);
    
    subplot(1, 2, 2);
    imshow(recovered_img);
    title(['解压缩图像: PSNR=', num2str(psnr_value, '%.2f'), ', SSIM=', num2str(ssim_value, '%.3f')]);
    
    % 打印结果
    fprintf('图像: %s\n', image_names{i});
    fprintf('原始尺寸: %d (%d×%d)\n', original_size, width, height);
    fprintf('压缩后尺寸: %d \n', compressed_size);
    fprintf('压缩率: %.2f\n', cr);
    fprintf('PSNR: %.2f\n', psnr_value);
    fprintf('SSIM: %.3f\n', ssim_value);
    fprintf('最优质量参数: %d\n\n', best_quality);
end

% 显示结果表格
figure;
uitable('Data', results, 'ColumnName', {'原始尺寸', '压缩后尺寸', '压缩率', 'PSNR', 'SSIM', '最优参数'}, ...
    'RowName', image_names, 'Position', [20 20 500 150]);

% 寻找最优质量参数的函数
function best_quality = find_best_quality(img, target_psnr, target_ssim)
    % 初始化参数范围
    min_quality = 1;
    max_quality = 100;
    best_quality = 50; % 初始猜测值
    best_psnr = 0;
    best_ssim = 0;
    
    % 设置安全边界，确保结果与目标要求有一定差距
    psnr_margin = 0.2;  % PSNR安全边界
    ssim_margin = 0.005; % SSIM安全边界
    
    % 调整目标值，增加安全边界
    target_psnr_with_margin = target_psnr + psnr_margin;
    target_ssim_with_margin = target_ssim + ssim_margin;
    
    % 二分查找最优参数
    while max_quality - min_quality > 1
        % 当前质量参数
        current_quality = floor((min_quality + max_quality) / 2);
        
        % 压缩和解压缩
        jpeg_data = im2jpeg(img, current_quality);
        recovered_img = jpeg2im(jpeg_data);
        
        % 计算PSNR和SSIM
        norm_img = double(img) / 255;
        norm_recovered_img = double(recovered_img) / 255;
        
        current_psnr = psnr(norm_recovered_img, norm_img);
        current_ssim = ssim(norm_recovered_img, norm_img);
        
        % 检查是否满足目标要求（包含安全边界）
        if current_psnr > target_psnr_with_margin && current_ssim > target_ssim_with_margin
            % 满足要求，尝试降低质量参数
            best_quality = current_quality;
            best_psnr = current_psnr;
            best_ssim = current_ssim;
            max_quality = current_quality;
        else
            % 不满足要求，增加质量参数
            min_quality = current_quality;
        end
    end
    
    % 如果没有找到满足条件的参数，返回最高质量
    if best_psnr < target_psnr_with_margin || best_ssim < target_ssim_with_margin
        best_quality = 100;
    end
end