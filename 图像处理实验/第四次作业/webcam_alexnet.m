%% 实时摄像头图像分类系统
% 第一部分：设置摄像头实时采集图像
% 第二部分：使用AlexNet进行实时分类

clc; clear; close all;

%% 第一部分：摄像头设置和初始化
fprintf('正在初始化摄像头...\n');

% 检查可用摄像头
camList = webcamlist;
if isempty(camList)
    error('未检测到摄像头设备！');
end

% 创建摄像头对象
cam = webcam(1); % 使用第一个摄像头
cam.Resolution = '640x480'; % 设置分辨率

% 预览摄像头（可选）
fprintf('摄像头初始化完成！分辨率：%s\n', cam.Resolution);

%% 第二部分：加载预训练的AlexNet模型
fprintf('正在加载AlexNet模型...\n');

% 加载预训练的AlexNet
try
    net = alexnet;
    fprintf('AlexNet模型加载成功！\n');
catch ME
    fprintf('加载AlexNet失败，尝试下载...\n');
    % 如果没有安装，尝试下载
    try
        net = alexnet;
    catch
        error('无法加载AlexNet。请确保已安装Deep Learning Toolbox和AlexNet支持包。');
    end
end

% 获取输入图像尺寸
inputSize = net.Layers(1).InputSize;
fprintf('模型输入尺寸：%dx%dx%d\n', inputSize(1), inputSize(2), inputSize(3));

%% 创建显示窗口
figure('Name', '实时图像分类系统', 'NumberTitle', 'off', ...
       'Position', [100, 100, 800, 600]);

% 创建子图布局
subplot(2,1,1); % 上方显示分类结果文本
title_handle = title('分类结果：准备中...', 'FontSize', 16, 'FontWeight', 'bold');
axis off;

subplot(2,1,2); % 下方显示摄像头图像
img_handle = imshow(zeros(480, 640, 3, 'uint8'));
title('实时摄像头画面', 'FontSize', 14);

%% 主循环：实时分类
fprintf('开始实时分类...\n按Ctrl+C停止程序\n');

% 性能计数器
frame_count = 0;
start_time = tic;

try
    while true
        % 获取当前帧
        current_frame = snapshot(cam);
        
        % 预处理图像用于分类
        % 调整图像尺寸到AlexNet输入要求
        resized_img = imresize(current_frame, [inputSize(1), inputSize(2)]);
        
        % 进行分类
        [predicted_label, scores] = classify(net, resized_img);
        
        % 获取置信度
        confidence = max(scores) * 100;
        
        % 更新显示
        set(img_handle, 'CData', current_frame);
        
        % 创建分类结果文本
        result_text = sprintf('分类结果: %s\n置信度: %.2f%%', ...
                             string(predicted_label), confidence);
        
        % 更新标题
        subplot(2,1,1);
        cla;
        text(0.5, 0.5, result_text, 'HorizontalAlignment', 'center', ...
             'VerticalAlignment', 'middle', 'FontSize', 20, ...
             'FontWeight', 'bold', 'Color', 'blue');
        axis off;
        
        % 更新图像显示
        subplot(2,1,2);
        
        % 性能统计
        frame_count = frame_count + 1;
        if mod(frame_count, 30) == 0 % 每30帧显示一次FPS
            elapsed_time = toc(start_time);
            fps = frame_count / elapsed_time;
            fprintf('处理帧数: %d, FPS: %.2f\n', frame_count, fps);
        end
        
        % 刷新显示
        drawnow;
        
        % 小延时以防止过度占用CPU
        pause(0.05);
    end
    
catch ME
    if strcmp(ME.identifier, 'MATLAB:interruption')
        fprintf('程序被用户中断\n');
    else
        fprintf('发生错误: %s\n', ME.message);
    end
end

%% 清理资源
fprintf('正在清理资源...\n');
clear cam;
close all;
fprintf('程序结束\n');

%% 附加功能函数

function installAlexNet()
    % 辅助函数：安装AlexNet支持包
    fprintf('正在尝试安装AlexNet支持包...\n');
    try
        % 这里需要手动下载和安装
        fprintf('请手动安装Deep Learning Toolbox Model for AlexNet Network\n');
        fprintf('可以通过Add-On Explorer搜索并安装\n');
    catch
        fprintf('自动安装失败，请手动安装\n');
    end
end

%% 使用说明和注意事项
% 
% 使用前准备：
% 1. 确保已安装MATLAB Image Processing Toolbox
% 2. 确保已安装Deep Learning Toolbox
% 3. 安装AlexNet支持包：
%    - 打开MATLAB Add-On Explorer
%    - 搜索"Deep Learning Toolbox Model for AlexNet Network"
%    - 点击安装
% 4. 确保电脑连接了摄像头
%
% 运行方法：
% 1. 直接运行此脚本
% 2. 程序会自动检测摄像头并开始实时分类
% 3. 按Ctrl+C停止程序
%
% 程序特点：
% - 实时显示摄像头画面
% - 实时进行图像分类
% - 显示分类结果和置信度
% - 性能监控（FPS显示）
%
% 可能的分类类别包括：
% - 各种动物（猫、狗、鸟类等）
% - 交通工具（汽车、飞机等）
% - 日常物品（键盘、鼠标、书籍等）
% - 食物类别等
% 总共1000个ImageNet类