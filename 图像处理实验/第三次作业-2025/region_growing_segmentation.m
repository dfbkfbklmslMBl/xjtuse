% 基于区域增长的图像分割算法

% 清除工作区和命令窗口
clear; clc; close all;

% 读取图像
img_path = 'regiongrowing.bmp';
img = imread(img_path);

% 检查图像是否为灰度图，如果不是则转换
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end

img_double = double(img_gray);
[rows, cols] = size(img_double);

% --- 参数设置 ---
% 前景种子点 (根据图像内容手动选择，例如选择亮区域中心)
seed_fg_row = 120;
seed_fg_col = 120;

% 背景种子点 (根据图像内容手动选择，例如选择暗区域)
seed_bg_row = 20;
seed_bg_col = 20;

% 区域增长阈值 (像素值差异)
threshold = 20;

% --- 执行区域增长 ---

% 1. 前景种子点
[segmented_fg, intermediates_fg] = region_grow(img_double, seed_fg_row, seed_fg_col, threshold);

% 2. 背景种子点
[segmented_bg, intermediates_bg] = region_grow(img_double, seed_bg_row, seed_bg_col, threshold);

% --- 显示结果 ---

figure('Name', '区域增长分割结果 (更多中间步骤)', 'NumberTitle', 'off');
num_intermediates = length(intermediates_fg);
num_cols_plot = num_intermediates + 2; % Original + Intermediates + Final

% 前景分割显示
subplot(2, num_cols_plot, 1);
imshow(img_gray);
title('原始图像');

for i = 1:num_intermediates
    subplot(2, num_cols_plot, 1 + i);
    imshow(intermediates_fg{i});
    title(['前景 - 中间步骤 ', num2str(i)]);
end

subplot(2, num_cols_plot, num_cols_plot);
imshow(segmented_fg);
title(['前景分割 (种子: ', num2str(seed_fg_row), ',', num2str(seed_fg_col), ')']);

% 背景分割显示
subplot(2, num_cols_plot, num_cols_plot + 1);
imshow(img_gray); % 再显示一次原始图
title('原始图像');

for i = 1:num_intermediates
    subplot(2, num_cols_plot, num_cols_plot + 1 + i);
    imshow(intermediates_bg{i});
    title(['背景 - 中间步骤 ', num2str(i)]);
end

subplot(2, num_cols_plot, 2 * num_cols_plot);
imshow(segmented_bg);
title(['背景分割 (种子: ', num2str(seed_bg_row), ',', num2str(seed_bg_col), ')']);

% --- 区域增长函数 ---
function [segmented_img, intermediates] = region_grow(img, seed_r, seed_c, threshold)
    [rows, cols] = size(img);
    segmented_img = false(rows, cols); % 初始化分割掩码 (逻辑型)
    visited = false(rows, cols);       % 记录已访问像素

    % 获取种子点像素值
    seed_value = img(seed_r, seed_c);

    % 初始化队列，并将种子点加入队列
    queue = [seed_r, seed_c];
    visited(seed_r, seed_c) = true;
    segmented_img(seed_r, seed_c) = true;
    pixel_count = 1;

    % 定义中间结果保存点 (增加到4个)
    num_intermediates_to_save = 4;
    % 估算总像素数，以便均匀分布保存点 (这里用一个较大的估计值，或者可以先运行一次得到大概范围)
    estimated_total_pixels = max(rows*cols / 5, 5000); % 假设区域最多占图像1/5或至少5000像素
    save_points = round(linspace(estimated_total_pixels / (num_intermediates_to_save + 1), estimated_total_pixels * num_intermediates_to_save / (num_intermediates_to_save + 1), num_intermediates_to_save));
    
    intermediates = cell(1, num_intermediates_to_save);
    saved_flags = false(1, num_intermediates_to_save);
    for k = 1:num_intermediates_to_save
        intermediates{k} = false(rows, cols);
    end

    % 定义8邻域偏移量
    neighbors = [-1, -1; -1, 0; -1, 1; 0, -1; 0, 1; 1, -1; 1, 0; 1, 1];

    head = 1; % 队列头指针

    while head <= size(queue, 1)
        % 出队
        current_r = queue(head, 1);
        current_c = queue(head, 2);
        head = head + 1;

        % 检查8邻域
        for i = 1:8
            nr = current_r + neighbors(i, 1);
            nc = current_c + neighbors(i, 2);

            % 检查边界和是否已访问
            if nr >= 1 && nr <= rows && nc >= 1 && nc <= cols && ~visited(nr, nc)
                visited(nr, nc) = true;
                neighbor_value = img(nr, nc);

                % 检查像素值差异是否在阈值内
                if abs(neighbor_value - seed_value) <= threshold
                    % 入队
                    queue = [queue; nr, nc];
                    segmented_img(nr, nc) = true;
                    pixel_count = pixel_count + 1;

                    % 保存中间结果
                    for k = 1:num_intermediates_to_save
                        if pixel_count >= save_points(k) && ~saved_flags(k)
                            intermediates{k} = segmented_img;
                            saved_flags(k) = true;
                        end
                    end
                end
            end
        end
        
    end % 结束 while 循环

    % 循环结束后，确保所有未保存的中间结果都被赋值为最终分割结果
    for k = 1:num_intermediates_to_save
        if ~saved_flags(k)
            intermediates{k} = segmented_img;
        end
    end

end