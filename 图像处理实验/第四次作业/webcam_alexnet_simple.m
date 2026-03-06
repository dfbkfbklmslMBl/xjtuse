%% 使用MATLAB摄像头和AlexNet进行实时图像分类（简化版）
% 此脚本实现两个功能：
% 1. 设置摄像头实时采集图像并显示
% 2. 使用预训练的AlexNet对实时图像进行分类

%% 清除环境
clear;
close all;
clc;

%% 检查是否安装必要的工具箱
if ~license('test', 'Deep_Learning_Toolbox')
    error('需要安装Deep Learning Toolbox');
end

%% 第一部分：设置摄像头
try
    % 获取可用摄像头列表
    camList = webcamlist;
    
    if isempty(camList)
        error('未检测到摄像头');
    end
    
    % 使用第一个可用摄像头
    cam = webcam(1);
    disp('成功连接摄像头');
catch
    error('摄像头初始化失败，请确保摄像头连接正常且未被其他程序占用');
end

%% 第二部分：加载AlexNet预训练模型
try
    % 检查是否已加载AlexNet
    modelPath = fullfile(matlabroot, 'toolbox', 'nnet', 'nndemos', 'nnet', 'alexnet', 'alexnet.mat');
    
    if exist(modelPath, 'file')
        % 直接加载本地文件
        S = load(modelPath);
        net = S.alexnet;
    else
        % 尝试通过函数加载
        net = alexnet;
    end
    
    % 获取网络输入层大小
    inputSize = net.Layers(1).InputSize(1:2);
    
    % 获取最后一层分类名称（如果可用）
    if isprop(net.Layers(end), 'ClassNames')
        classNames = net.Layers(end).ClassNames;
    else
        classNames = {};
    end
    
    fprintf('成功加载AlexNet模型\n');
catch ME
    fprintf('加载AlexNet失败: %s\n', ME.message);
    fprintf('请先安装Deep Learning Toolbox Model for AlexNet Network支持包\n');
    
    % 提供获取AlexNet的替代方法
    error(['无法加载AlexNet模型。请在命令窗口运行以下命令安装：\n', ...
           'addons = matlab.addons.installedAddons;\n', ...
           'if ~any(strcmp(addons.Name, ''Deep Learning Toolbox Model for AlexNet Network''))\n', ...
           '    matlab.addons.install(''Deep Learning Toolbox Model for AlexNet Network'');\n', ...
           'end']);
end

%% 创建用户界面
% 创建图形窗口
fig = figure('Name', '实时摄像头图像分类', ...
             'NumberTitle', 'off', ...
             'Position', [100, 100, 800, 600], ...
             'CloseRequestFcn', @cleanupFcn, ...
             'MenuBar', 'none', ...
             'ToolBar', 'none');

% 创建图像显示轴
ax = axes('Parent', fig, 'Position', [0.05, 0.05, 0.9, 0.85]);

% 创建分类结果文本
txtResult = uicontrol('Style', 'text', ...
                      'Position', [50, 550, 700, 30], ...
                      'String', '等待分类...', ...
                      'FontSize', 14, ...
                      'BackgroundColor', [1, 1, 1]);

% 创建退出按钮
uicontrol('Style', 'pushbutton', ...
          'Position', [700, 20, 80, 30], ...
          'String', '退出', ...
          'Callback', @cleanupFcn);

%% 主循环 - 实时图像采集和分类
% 分类间隔设置（秒）
classifyInterval = 0.5;
lastClassifyTime = tic;

% 初始化预测结果变量
predictedLabel = '';
confidence = 0;

% 设置运行标志
isRunning = true;

% 主循环
while isRunning && ishandle(fig)
    try
        % 捕获图像
        img = snapshot(cam);
        
        % 显示图像
        imshow(img, 'Parent', ax);
        
        % 获取当前时间
        currentTime = toc(lastClassifyTime);
        
        % 每隔classifyInterval秒进行一次分类
        if currentTime >= classifyInterval
            % 重置计时器
            lastClassifyTime = tic;
            
            % 预处理图像以适应AlexNet
            imgResized = imresize(img, inputSize);
            
            % AlexNet需要RGB图像
            if size(imgResized, 3) == 1
                imgResized = cat(3, imgResized, imgResized, imgResized);
            end
            
            % 进行分类
            [predictedLabels, scores] = classify(net, imgResized);
            
            % 获取最高概率的类别和置信度
            predictedLabel = char(predictedLabels);
            [confidence, ~] = max(scores);
            
            % 更新显示结果
            resultText = sprintf('分类结果: %s  置信度: %.2f%%', predictedLabel, confidence*100);
            set(txtResult, 'String', resultText);
        end
        
        % 刷新显示
        drawnow limitrate;
        
    catch ME
        if strcmp(ME.identifier, 'MATLAB:class:InvalidHandle')
            % 窗口已关闭
            isRunning = false;
        else
            % 其他错误
            warning('运行时错误: %s', ME.message);
        end
    end
end

% 清理资源函数
function cleanupFcn(~, ~)
    try
        if exist('cam', 'var')
            clear cam;
        end
        if exist('fig', 'var') && ishandle(fig)
            delete(fig);
        end
        isRunning = false;
    catch
        % 忽略清理过程中的错误
    end
end 