% 修复版实时摄像头图像分类 - AlexNet
clear; clc; close all;

%% 初始化摄像头和模型
cam = webcam();              % 创建摄像头对象
net = alexnet;               % 加载AlexNet模型

%% 创建显示窗口，添加关闭按钮功能
fig = figure('Name', '实时分类 (按ESC或关闭窗口退出)', ...
             'Position', [100, 100, 600, 500], ...
             'KeyPressFcn', @keyPressCallback, ...
             'CloseRequestFcn', @closeCallback);

% 全局变量控制循环
global keepRunning;
keepRunning = true;

%% 初始化显示
img = snapshot(cam);
h_img = imshow(img);
h_title = title('正在初始化...', 'FontSize', 12, 'Color', 'blue');

%% 实时分类循环（减少闪烁）
frame_count = 0;
current_label = '';
current_confidence = 0;

while keepRunning && ishandle(fig)
    frame_count = frame_count + 1;
    
    % 采集图像
    img = snapshot(cam);
    
    % 每10帧才进行一次分类（进一步降低频率）
    if mod(frame_count, 10) == 1
        % 预处理：调整尺寸到227x227
        img_resized = imresize(img, [227, 227]);
        
        % 分类
        [label, scores] = classify(net, img_resized);
        confidence = max(scores) * 100;
        
        % 只有结果显著变化时才更新标题
        if ~strcmp(string(label), current_label) || abs(confidence - current_confidence) > 5
            current_label = string(label);
            current_confidence = confidence;
            
            % 更新标题
            set(h_title, 'String', sprintf('分类: %s  - 按ESC退出', ...
                current_label), ...
                'Color', 'red', 'FontWeight', 'bold');
        end
    end
    
    % 更新图像（不重新创建imshow）
    set(h_img, 'CData', img);
    
    % 控制刷新率 - 暂停100毫秒
    pause(0.1);
    
    % 刷新显示
    drawnow limitrate;
end

%% 清理资源
fprintf('正在关闭摄像头...\n');
clear cam;
close all;
fprintf('程序已安全退出\n');

%% 回调函数
function keyPressCallback(~, event)
    global keepRunning;
    if strcmp(event.Key, 'escape')
        fprintf('检测到ESC键，准备退出...\n');
        keepRunning = false;
    end
end

function closeCallback(~, ~)
    global keepRunning;
    fprintf('窗口关闭请求，准备退出...\n');
    keepRunning = false;
    delete(gcf);
end