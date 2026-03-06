%% AlexNet安装与设置脚本
% 此脚本用于检查并安装AlexNet模型及必要的工具箱

fprintf('开始检查必要的工具箱和模型...\n');

%% 检查Deep Learning Toolbox
fprintf('检查Deep Learning Toolbox...\n');
if ~license('test', 'Deep_Learning_Toolbox')
    fprintf('❌ 未安装Deep Learning Toolbox!\n');
    fprintf('请通过MATLAB Add-On Explorer安装Deep Learning Toolbox\n');
    fprintf('安装方法：\n');
    fprintf('1. 在MATLAB命令窗口中输入: addons\n');
    fprintf('2. 在打开的Add-On Explorer中搜索"Deep Learning Toolbox"\n');
    fprintf('3. 点击安装按钮并按照提示完成安装\n');
    error('需要安装Deep Learning Toolbox才能继续');
else
    fprintf('✓ Deep Learning Toolbox已安装\n');
end

%% 检查Support Package
fprintf('检查AlexNet Support Package...\n');
addons = matlab.addons.installedAddons;
hasAlexNetSupportPackage = any(strcmp(addons.Name, 'Deep Learning Toolbox Model for AlexNet Network'));

if ~hasAlexNetSupportPackage
    fprintf('❌ 未安装AlexNet Support Package!\n');
    
    % 提示安装
    fprintf('是否要现在安装AlexNet Support Package? (y/n):\n');
    userInput = input('', 's');
    
    if strcmpi(userInput, 'y')
        try
            fprintf('正在安装AlexNet Support Package...\n');
            matlab.addons.install('Deep Learning Toolbox Model for AlexNet Network');
            fprintf('✓ AlexNet Support Package安装完成\n');
        catch ME
            fprintf('安装失败: %s\n', ME.message);
            fprintf('请尝试手动安装:\n');
            fprintf('1. 在MATLAB命令窗口中输入: addons\n');
            fprintf('2. 在打开的Add-On Explorer中搜索"Deep Learning Toolbox Model for AlexNet Network"\n');
            fprintf('3. 点击安装按钮并按照提示完成安装\n');
            error('安装AlexNet Support Package失败');
        end
    else
        fprintf('请手动安装AlexNet Support Package后再运行程序\n');
        fprintf('安装方法:\n');
        fprintf('1. 在MATLAB命令窗口中输入: addons\n');
        fprintf('2. 在打开的Add-On Explorer中搜索"Deep Learning Toolbox Model for AlexNet Network"\n');
        fprintf('3. 点击安装按钮并按照提示完成安装\n');
        error('需要安装AlexNet Support Package才能继续');
    end
else
    fprintf('✓ AlexNet Support Package已安装\n');
end

%% 测试AlexNet模型加载
fprintf('测试AlexNet模型加载...\n');
try
    % 尝试加载AlexNet
    net = alexnet;
    
    % 获取输入大小
    inputSize = net.Layers(1).InputSize;
    
    fprintf('✓ AlexNet模型加载成功！模型信息如下:\n');
    fprintf('  - 输入大小: %d x %d x %d\n', inputSize(1), inputSize(2), inputSize(3));
    fprintf('  - 网络深度: %d层\n', numel(net.Layers));
    fprintf('  - 可识别类别数: %d\n', net.Layers(end).OutputSize);
    
    % 创建一个随机测试图像
    testImg = rand(inputSize);
    
    % 测试分类功能
    fprintf('测试分类功能...\n');
    tic;
    [~, ~] = classify(net, testImg);
    classifyTime = toc;
    
    fprintf('✓ 分类功能测试成功! 分类耗时: %.2f秒\n', classifyTime);
catch ME
    fprintf('❌ AlexNet模型加载失败: %s\n', ME.message);
    error('AlexNet模型加载失败');
end

%% 测试摄像头
fprintf('测试摄像头...\n');
try
    camList = webcamlist;
    
    if isempty(camList)
        fprintf('❌ 未检测到摄像头!\n');
        error('未检测到摄像头');
    else
        fprintf('✓ 检测到以下摄像头:\n');
        for i = 1:length(camList)
            fprintf('  %d. %s\n', i, camList{i});
        end
        
        % 尝试连接第一个摄像头
        fprintf('尝试连接摄像头 %s...\n', camList{1});
        cam = webcam(1);
        
        % 拍摄一张测试照片
        img = snapshot(cam);
        
        % 关闭摄像头
        clear cam;
        
        fprintf('✓ 摄像头连接测试成功!\n');
    end
catch ME
    fprintf('❌ 摄像头测试失败: %s\n', ME.message);
    error('摄像头测试失败');
end

%% 完成设置
fprintf('\n===== 设置完成 =====\n');
fprintf('所有必要组件已安装并测试通过!\n');
fprintf('您现在可以运行以下脚本之一:\n');
fprintf('1. webcam_alexnet.m - 标准版本\n');
fprintf('2. webcam_alexnet_simple.m - 简化版本\n');
fprintf('\n祝您使用愉快!\n'); 