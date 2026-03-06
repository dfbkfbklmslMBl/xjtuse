clc;clear;close all

% 读取数据集，将子文件夹名称作为类别名称
digitData = imageDatastore('MNIST','IncludeSubfolders',true,'LabelSource','foldernames');

% 检视每个类别的样本数量
countlabels = digitData.countEachLabel

% 按0.75/0.25的比例划分训练集和测试集
trainingNumFiles = 750;
[trainDigitData,testDigitData] = splitEachLabel(digitData,trainingNumFiles,"randomized");

%% 在这里搭建你的网络 %%
layers = [
    imageInputLayer([28 28 1],'Name','input','Normalization','none') % 输入层，28x28x1图像，'none'表示不在此层进行额外归一化

    % 第一个卷积模块
    convolution2dLayer(5, 32, 'Padding','same', 'Name','conv1') % 卷积层1: 32个5x5卷积核, 'same'填充保持尺寸
    batchNormalizationLayer('Name','bn1')                       % 批量归一化层: 加速训练，提高稳定性
    reluLayer('Name','relu1')                                   % ReLU激活函数
    maxPooling2dLayer(2,'Stride',2,'Name','pool1')              % 最大池化层1: 2x2窗口，步长2，尺寸减半 (输出 14x14x32)

    % 第二个卷积模块
    convolution2dLayer(5, 64, 'Padding','same', 'Name','conv2') % 卷积层2: 64个5x5卷积核, 'same'填充
    batchNormalizationLayer('Name','bn2')                       % 批量归一化层
    reluLayer('Name','relu2')                                   % ReLU激活函数
    maxPooling2dLayer(2,'Stride',2,'Name','pool2')              % 最大池化层2: 尺寸减半 (输出 7x7x64)

    % 全连接层模块
    % 展平后输入维度为 7*7*64 = 3136
    fullyConnectedLayer(1024,'Name','fc1')                      % 全连接层1: 1024个神经元
    reluLayer('Name','relu_fc1')                                % ReLU激活函数
    dropoutLayer(0.5, 'Name', 'dropout1')                       % Dropout层: 防止过拟合，丢弃率0.5

    fullyConnectedLayer(10,'Name','fc_output')                  % 全连接层2 (输出层): 10个神经元对应10个数字类别
    softmaxLayer('Name','softmax')                              % Softmax层: 将输出转换为概率分布
    classificationLayer('Name','output')                        % 分类层: 根据最高概率输出类别
];

%% 在这里设置你的网络参数 %%
options = trainingOptions('adam', ... % 使用adam优化器
    'InitialLearnRate',0.001, ...     % 初始学习率
    'MaxEpochs',20, ...               % 最大训练周期数
    'MiniBatchSize', 128, ...         % 每批训练样本数
    'Shuffle','every-epoch', ...      % 每个周期打乱数据顺序
    'ValidationData',testDigitData, ... % 验证数据集
    'ValidationFrequency',floor(7500/128), ... % 验证频率 (7500训练样本 / 128批大小 ≈ 58次迭代/周期)
    'Verbose',true, ...               % 显示训练过程
    'Plots','training-progress', ...  % 绘制训练进度图
    'ExecutionEnvironment','parallel', ... % 执行环境: 'parallel'使用多CPU并行，若有兼容GPU也可设为'gpu'或'auto'
    'L2Regularization', 0.0001);      % L2正则化参数，帮助防止过拟合

%% 训练和测试网络
% 训练
myNet = trainNetwork(trainDigitData,layers,options);

% 测试
predictedLabels = classify(myNet,testDigitData);

% 计算识别率
valLabels = testDigitData.Labels;
accuracy = sum(predictedLabels==valLabels)/numel(predictedLabels)