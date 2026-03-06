module key_led(
    input sys_clk,
    input sys_rst_n,
    input [1:0] key,
    output reg [7:0] led
);

reg [24:0] cnt; // 用于计时的计数器
reg [2:0] state; // 用于交替闪烁状态的计数器

// 同步复位
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        cnt <= 25'd0;
        state <= 3'd0;
    end else begin
        // 计数器每周期增加
        cnt <= cnt + 25'd1;
        // 当计数器达到一定值时，重置计数器和状态
        if (cnt == 25) begin
            cnt <= 25'd0;
            if (key == 2'b01 || key == 2'b11) state <= state + 3'd1; // 交替闪烁时改变状态
        end
    end
end

// 根据按键和状态控制LED
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        led <= 8'b0; // 复位时关闭所有LED
    end else begin
        case (key)
            2'b01: begin // 输入01时交替闪烁
                case (state)
                    3'd0: led <= 8'b01010101;
                    3'd1: led <= 8'b10101010;
                    3'd2: led <= 8'b01010101;
                    3'd3: led <= 8'b10101010;
                    3'd4: led <= 8'b01010101;
                    3'd5: led <= 8'b10101010;
                    3'd6: led <= 8'b01010101;
                    3'd7: led <= 8'b10101010;
                    default: led <= 8'b0;
                endcase
            end
            2'b10: begin // 输入10时同时闪烁
                if (cnt == 25'd0) // 每次计数器归零时改变一次状态
                    led <= ~led; // 翻转所有LED的状态
                else
                    led <= led;
            end
            2'b11: begin // 输入11时交替闪烁
                case (state)
                    3'd0: led <= 8'b11111111;
                    3'd1: led <= 8'b11111110;
                    3'd2: led <= 8'b11111100;
                    3'd3: led <= 8'b11111000;
                    3'd4: led <= 8'b11110000;
                    3'd5: led <= 8'b11100000;
                    3'd6: led <= 8'b11000000;
                    3'd7: led <= 8'b10000000;
                    default: led <= 8'b0;
                endcase
            end
            default: begin 
                led <= 8'b0; // 默认状态，关闭所有LED
            end
        endcase
    end
end

endmodule