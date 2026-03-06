module seven(
    input wire clk,           // 输入时钟（50MHz）
    input wire rst_n,         // 低电平有效的复位信号
    // 游戏控制接口
    input wire [3:0] game_buttons,   // 游戏按钮
    output wire [7:0] led_display,   // LED显示
    output wire [7:0] game_score     // 游戏分数显示
);

// 实例化top模块
top top_inst(
    .clk_in(clk),
    .rst_n(rst_n),
    .game_buttons(game_buttons),
    .led_display(led_display),
    .game_score(game_score)
);

endmodule 