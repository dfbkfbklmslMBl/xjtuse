# MATLAB实时摄像头图像分类 (AlexNet)

这个MATLAB程序使用电脑摄像头实时采集图像，并用预训练的AlexNet深度神经网络对图像进行实时分类。

## 功能特点

1. 实时打开并访问电脑摄像头
2. 使用预训练的AlexNet进行图像分类
3. 实时显示分类结果和置信度
4. 用户友好的界面，包含退出按钮

## 系统要求

- MATLAB R2019a或更高版本
- Deep Learning Toolbox
- Deep Learning Toolbox Model for AlexNet Network支持包
- 连接正常的网络摄像头

## 安装步骤

1. 确保已安装MATLAB及上述工具箱
2. 如果尚未安装AlexNet支持包，在MATLAB命令窗口运行：
   ```matlab
   deepNetworkDesigner
   ```
   然后按照提示安装AlexNet支持包

## 使用方法

1. 在MATLAB中打开`webcam_alexnet.m`文件
2. 点击"运行"按钮或在命令窗口中输入`webcam_alexnet`
3. 程序将自动启动摄像头并开始实时分类
4. 分类结果将显示在图像上方
5. 点击"退出"按钮停止程序

## 程序解释

- 程序首先加载预训练的AlexNet模型
- 然后初始化摄像头并创建显示界面
- 在主循环中，程序不断采集图像并每0.5秒进行一次分类
- 分类结果与置信度实时显示在图像上方

## 故障排除

- 如果出现"加载AlexNet模型失败"错误，请确保已正确安装Deep Learning Toolbox及AlexNet支持包
- 如果出现"连接摄像头失败"错误，请检查摄像头连接并确认其他应用没有占用摄像头

## 注意事项

- AlexNet模型默认可以识别1000种不同的物体类别
- 为获得最佳分类效果，请确保摄像头图像清晰且光线充足 