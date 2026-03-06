module clock_gen(
    input wire clk_in,        // 输入时钟（通常为50MHz）
    input wire rst_n,         // 低电平有效的复位信号
    output reg clk_cpu,       // CPU时钟输出
    output reg clk_game,      // 游戏时钟输出
    output reg clk_display    // 显示时钟输出
);

// 时钟分频计数器
reg [31:0] clk_counter;

// 时钟分频参数
parameter CPU_CLK_DIV = 50000000;    // CPU时钟分频比
parameter GAME_CLK_DIV = 100000000;  // 游戏时钟分频比
parameter DISPLAY_CLK_DIV = 25000000; // 显示时钟分频比

always @(posedge clk_in or negedge rst_n) begin
    if (!rst_n) begin
        clk_counter <= 32'h0;
        clk_cpu <= 1'b0;
        clk_game <= 1'b0;
        clk_display <= 1'b0;
    end else begin
        clk_counter <= clk_counter + 1;
        
        // CPU时钟生成
        if (clk_counter % CPU_CLK_DIV == 0)
            clk_cpu <= ~clk_cpu;
            
        // 游戏时钟生成
        if (clk_counter % GAME_CLK_DIV == 0)
            clk_game <= ~clk_game;
            
        // 显示时钟生成
        if (clk_counter % DISPLAY_CLK_DIV == 0)
            clk_display <= ~clk_display;
    end
end

endmodule 