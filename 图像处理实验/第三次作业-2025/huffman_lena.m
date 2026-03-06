% 霍夫曼编码处理lena.bmp图像
% 无需Communications Toolbox

% 读取lena.bmp图像
img = imread('lena.bmp');

% 将图像转换为一维数组
img_array = img(:);

% 统计每个像素值的出现次数
pixel_values = unique(img_array);
pixel_counts = zeros(size(pixel_values));

for i = 1:length(pixel_values)
    pixel_counts(i) = sum(img_array == pixel_values(i));
end

% 计算概率
probabilities = pixel_counts / length(img_array);

% 构建霍夫曼树和编码
[huffman_codes, avg_length] = build_huffman_codes(pixel_values, probabilities);

% 显示结果
disp('霍夫曼编码词典:');
for i = 1:length(pixel_values)
    disp(['符号 ', num2str(pixel_values(i)), ': 码字 ', huffman_codes{i}]);
end

% 计算编码后的总位数
encoded_bits = 0;
for i = 1:length(img_array)
    pixel_val = img_array(i);
    idx = find(pixel_values == pixel_val);
    encoded_bits = encoded_bits + length(huffman_codes{idx});
end

% 计算原始位数和压缩比
original_bits = 8 * length(img_array);  % 8位/像素
compression_ratio = original_bits / encoded_bits;

fprintf('\n平均码长: %.4f 比特/符号\n', avg_length);
fprintf('原始大小: %d 比特\n', original_bits);
fprintf('编码后大小: %d 比特\n', encoded_bits);
fprintf('压缩比: %.4f\n', compression_ratio);

% 可视化原始图像
figure;
subplot(1, 2, 1);
imshow(img);
title('原始图像');

% 可视化霍夫曼编码的概率分布
subplot(1, 2, 2);
bar(pixel_values, probabilities);
title('像素值概率分布');
xlabel('像素值');
ylabel('概率');

% 函数：构建霍夫曼树和编码
function [codes, avg_length] = build_huffman_codes(symbols, probs)
    % 初始化编码表
    codes = cell(size(symbols));
    
    % 特殊情况：只有一个符号
    if length(symbols) == 1
        codes{1} = '0';
        avg_length = 1;
        return;
    end
    
    % 创建节点数组，每个节点包含符号列表和概率
    nodes = cell(length(symbols), 1);
    for i = 1:length(symbols)
        nodes{i} = struct('symbols', symbols(i), 'prob', probs(i));
    end
    
    % 构建霍夫曼树
    while length(nodes) > 1
        % 按概率排序
        [~, idx] = sort(cellfun(@(x) x.prob, nodes));
        nodes = nodes(idx);
        
        % 合并两个最小概率的节点
        node1 = nodes{1};
        node2 = nodes{2};
        
        new_node = struct('symbols', [node1.symbols, node2.symbols], ...
                          'prob', node1.prob + node2.prob, ...
                          'left', node1, 'right', node2);
        
        % 移除原节点，添加新节点
        nodes = [nodes(3:end); {new_node}];
    end
    
    % 从树根递归分配码字
    root = nodes{1};
    code_map = assign_codes(root, '', struct());
    
    % 为每个符号分配码字
    for i = 1:length(symbols)
        sym = symbols(i);
        field_name = ['x', num2str(sym)];
        if isfield(code_map, field_name)
            codes{i} = code_map.(field_name);
        else
            % 确保每个符号都有码字
            codes{i} = '';
        end
    end
    
    % 计算平均码长
    avg_length = 0;
    for i = 1:length(symbols)
        avg_length = avg_length + probs(i) * length(codes{i});
    end
end

% 函数：递归分配码字
function code_map = assign_codes(node, code_prefix, code_map)
    % 如果是叶节点
    if ~isfield(node, 'left') || ~isfield(node, 'right')
        % 单个符号节点
        if length(node.symbols) == 1
            field_name = ['x', num2str(node.symbols)];
            code_map.(field_name) = code_prefix;
            if isempty(code_prefix)
                code_map.(field_name) = '0';  % 只有一个符号的情况
            end
        end
        return;
    end
    
    % 递归左子树 (添加0)
    code_map = assign_codes(node.left, [code_prefix, '0'], code_map);
    
    % 递归右子树 (添加1)
    code_map = assign_codes(node.right, [code_prefix, '1'], code_map);
end