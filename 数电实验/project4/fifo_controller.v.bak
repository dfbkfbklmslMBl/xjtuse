module fifo_controller (
    input clk,                 // 时钟输入
    input rst,                 // 复位输入
    input wr_en,               // 写使能信号
    input rd_en,               // 读使能信号
    input [7:0] data_in,       // 数据输入
    output [7:0] data_out,     // 数据输出
    output reg empty,          // 空标志
    output reg full            // 满标志
);

    reg [6:0] wr_ptr = 0;      // 写指针，7位宽度
    reg [6:0] rd_ptr = 0;      // 读指针，7位宽度
    reg [7:0] fifo_count = 0;  // FIFO中的数据计数器，8位宽度

    wire [7:0] ram_data_out;
    reg wren;

    // 实例化RAM模块
    fifo_outputfile ram (
        .address(wren ? wr_ptr : rd_ptr),  // 地址选择，在写使能时使用写指针，否则使用读指针
        .clock(clk),
        .data(data_in),
        .wren(wren),                      
        .q(ram_data_out)
    );

    assign data_out = ram_data_out;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr <= 0;
            rd_ptr <= 0;
            fifo_count <= 0;
            empty <= 1;
            full <= 0;
        end else begin
            if (wr_en && !full) begin
                wr_ptr <= wr_ptr + 1;
                fifo_count <= fifo_count + 1;
                wren <= 1;
            end else begin
                wren <= 0;
            end

            if (rd_en && !empty) begin
                rd_ptr <= rd_ptr + 1;
                fifo_count <= fifo_count - 1;
            end
            
            // 更新空和满标志
            empty <= (fifo_count == 0);
            full  <= (fifo_count == 128);
        end
    end

endmodule