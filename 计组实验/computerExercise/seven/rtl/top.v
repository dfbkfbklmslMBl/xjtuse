module top(
    input wire clk_in,        // 输入时钟（50MHz）
    input wire rst_n,         // 低电平有效的复位信号
    // 游戏控制接口
    input wire [3:0] game_buttons,   // 游戏按钮
    output wire [7:0] led_display,   // LED显示
    output wire [7:0] game_score     // 游戏分数显示
);

// 内部时钟信号
wire clk_cpu;
wire clk_game;
wire clk_display;

// 内部总线信号
wire [15:0] addr;
wire [7:0] data_bus;
wire rd_n;
wire wr_n;

// 三态总线控制信号
wire [7:0] cpu_data_out;
wire [7:0] mem_data_out;
wire [7:0] game_data_out;
wire cpu_data_en;
wire mem_data_en;
wire game_data_en;

// 存储器选择信号
wire rom_sel;
wire ram_sel;

// 时钟生成模块实例化
clock_gen clock_gen_inst(
    .clk_in(clk_in),
    .rst_n(rst_n),
    .clk_cpu(clk_cpu),
    .clk_game(clk_game),
    .clk_display(clk_display)
);

// CPU核心模块实例化
cpu_core cpu_core_inst(
    .clk(clk_cpu),
    .rst_n(rst_n),
    .addr(addr),
    .data_out(cpu_data_out),
    .data_in(data_bus),
    .rd_n(rd_n),
    .wr_n(wr_n),
    .data_en(cpu_data_en),
    .game_status(),
    .game_input()
);

// 存储器模块实例化
memory memory_inst(
    .clk(clk_cpu),
    .rst_n(rst_n),
    .addr(addr),
    .data_in(data_bus),
    .data_out(mem_data_out),
    .rd_n(rd_n),
    .wr_n(wr_n),
    .data_en(mem_data_en),
    .rom_sel(rom_sel),
    .ram_sel(ram_sel)
);

// 游戏控制器模块实例化
game_controller game_controller_inst(
    .clk(clk_game),
    .rst_n(rst_n),
    .cpu_data_in(data_bus),
    .cpu_data_out(game_data_out),
    .cpu_addr(addr[7:0]),
    .cpu_rd_n(rd_n),
    .cpu_wr_n(wr_n),
    .data_en(game_data_en),
    .game_buttons(game_buttons),
    .game_display(led_display),
    .game_score(game_score)
);

// 存储器选择逻辑
assign rom_sel = (addr[15:12] == 4'h0);
assign ram_sel = (addr[15:12] == 4'h1);

// 三态总线控制
assign data_bus = (cpu_data_en) ? cpu_data_out :
                  (mem_data_en) ? mem_data_out :
                  (game_data_en) ? game_data_out : 8'hZZ;

endmodule 