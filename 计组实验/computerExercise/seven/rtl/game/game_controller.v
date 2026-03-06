module game_controller(
    input wire clk,           // 时钟输入
    input wire rst_n,         // 低电平有效的复位信号
    // CPU接口
    input wire [7:0] cpu_data_in,    // CPU数据输入
    output reg [7:0] cpu_data_out,   // CPU数据输出
    input wire [7:0] cpu_addr,       // CPU地址
    input wire cpu_rd_n,             // CPU读信号
    input wire cpu_wr_n,             // CPU写信号
    output reg data_en,              // 数据使能信号
    // 游戏控制接口
    input wire [3:0] game_buttons,   // 游戏按钮输入
    output reg [7:0] game_display,   // 游戏显示输出
    output reg [7:0] game_score      // 游戏分数
);

// 游戏状态定义
localparam IDLE = 3'b000;
localparam PLAYING = 3'b001;
localparam PAUSED = 3'b010;
localparam GAME_OVER = 3'b011;

reg [2:0] game_state;
reg [7:0] player_pos;
reg [7:0] obstacle_pos;
reg [7:0] game_timer;

// 游戏控制逻辑
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        game_state <= IDLE;
        player_pos <= 8'h00;
        obstacle_pos <= 8'h00;
        game_timer <= 8'h00;
        game_score <= 8'h00;
        game_display <= 8'h00;
        data_en <= 1'b0;
    end else begin
        case (game_state)
            IDLE: begin
                if (game_buttons[0])  // 开始按钮
                    game_state <= PLAYING;
            end
            
            PLAYING: begin
                // 游戏主循环
                game_timer <= game_timer + 1;
                
                // 玩家移动控制
                if (game_buttons[1])  // 左移
                    player_pos <= (player_pos > 0) ? player_pos - 1 : player_pos;
                if (game_buttons[2])  // 右移
                    player_pos <= (player_pos < 7) ? player_pos + 1 : player_pos;
                
                // 障碍物移动
                obstacle_pos <= (obstacle_pos == 0) ? 7 : obstacle_pos - 1;
                
                // 碰撞检测
                if (player_pos == obstacle_pos)
                    game_state <= GAME_OVER;
                
                // 更新显示
                game_display <= (1 << player_pos) | (1 << obstacle_pos);
                
                // 暂停控制
                if (game_buttons[3])
                    game_state <= PAUSED;
            end
            
            PAUSED: begin
                if (game_buttons[3])  // 再次按下暂停按钮
                    game_state <= PLAYING;
            end
            
            GAME_OVER: begin
                if (game_buttons[0]) begin  // 重新开始
                    game_state <= PLAYING;
                    game_score <= 8'h00;
                    player_pos <= 8'h00;
                    obstacle_pos <= 8'h07;
                end
            end
        endcase
        
        // CPU接口处理
        if (!cpu_rd_n) begin
            case (cpu_addr)
                8'h00: begin
                    cpu_data_out <= game_state;
                    data_en <= 1'b1;
                end
                8'h01: begin
                    cpu_data_out <= game_score;
                    data_en <= 1'b1;
                end
                8'h02: begin
                    cpu_data_out <= game_display;
                    data_en <= 1'b1;
                end
                default: begin
                    data_en <= 1'b0;
                end
            endcase
        end else if (!cpu_wr_n) begin
            case (cpu_addr)
                8'h01: game_score <= cpu_data_in;
            endcase
            data_en <= 1'b0;
        end else begin
            data_en <= 1'b0;
        end
    end
end

endmodule 