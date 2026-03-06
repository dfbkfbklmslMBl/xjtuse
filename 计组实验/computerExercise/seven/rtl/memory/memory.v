module memory(
    input wire clk,           // 时钟输入
    input wire rst_n,         // 低电平有效的复位信号
    // 地址和数据总线
    input wire [15:0] addr,   // 地址输入
    input wire [7:0] data_in, // 数据输入
    output reg [7:0] data_out,// 数据输出
    input wire rd_n,          // 读信号
    input wire wr_n,          // 写信号
    output reg data_en,       // 数据使能信号
    // 存储器选择信号
    input wire rom_sel,       // ROM选择信号
    input wire ram_sel        // RAM选择信号
);

// 存储器定义
reg [7:0] rom [0:4095];      // 4K ROM
reg [7:0] ram [0:255];       // 256字节RAM

// 初始化ROM（这里可以添加游戏程序）
initial begin
    // 示例：添加一些测试数据
    rom[0] = 8'h74;  // MOV A, #data
    rom[1] = 8'h55;  // 数据
    rom[2] = 8'h80;  // SJMP $
    rom[3] = 8'hFE;  // 跳转地址
end

// 存储器访问逻辑
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_out <= 8'h00;
        data_en <= 1'b0;
    end else begin
        if (!rd_n) begin
            // 读操作
            if (rom_sel) begin
                data_out <= rom[addr[11:0]];
                data_en <= 1'b1;
            end else if (ram_sel) begin
                data_out <= ram[addr[7:0]];
                data_en <= 1'b1;
            end else begin
                data_en <= 1'b0;
            end
        end else if (!wr_n && ram_sel) begin
            // 写操作（仅RAM可写）
            ram[addr[7:0]] <= data_in;
            data_en <= 1'b0;
        end else begin
            data_en <= 1'b0;
        end
    end
end

endmodule 