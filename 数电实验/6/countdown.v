// 模块 tick_generator 生成时钟周期
module tick_generator
#(parameter CPS = 100,       // Clock Per Second, 每秒时钟数
  parameter TPS = 20)        // Ticks Per Second, 每秒滴答数
(
    input clk, rst,          // 时钟信号和复位信号
    output reg[3:0] ticks    // 4位滴答输出信号
);
    reg[31:0] counter;       // 32位计数器寄存器
    reg high;                // 高低电平切换寄存器
    
    // 始终块，在时钟上升沿或复位信号上升沿触发
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // 复位信号有效时，将滴答信号、计数器和高低电平切换寄存器清零
            ticks <= 4'b0000;
            counter <= 0;
            high <= 0;
        end else if (counter == CPS / TPS - 1) begin
            // 计数器达到 CPS/TPS - 1 时，重置计数器，切换高低电平，并生成滴答信号
            counter <= 0;
            high <= ~high;
            ticks <= high ? 4'b0001 : 4'b0000;
        end else begin
            // 计数器未达到目标值时，自增1
            counter <= counter + 1;
        end
    end
endmodule

// 模块 sw_press_detect 检测短按按键
module sw_press_detect(
    input tick, rst,           // 滴答信号和复位信号
    input sw,                  // 开关信号
    output reg pressed         // 按键按下信号输出
);
    reg last;                  // 上一次开关状态
    
    // 始终块，在滴答信号上升沿或复位信号上升沿触发
    always @(posedge tick or posedge rst) begin
        if (rst) begin
            // 复位信号有效时，将上次开关状态和按键按下信号清零
            last <= 0;
            pressed <= 0;
        end else begin
            // 检测上升沿信号（按键按下时为高电平）
            pressed <= !last && sw;
            // 更新上次开关状态
            last <= sw;
        end
    end
endmodule

// 模块 sw_longpress_detect 检测长按按键
module sw_longpress_detect(
    input tick, rst,           // 滴答信号和复位信号
    input sw,                  // 开关信号
    output reg pressed         // 长按按键信号输出
);
    reg[7:0] pressed_time;     // 记录按键按下时间
    
    // 始终块，在滴答信号上升沿或复位信号上升沿触发
    always @(posedge tick or posedge rst) begin
        if (rst) begin
            // 复位信号有效时，将按键按下时间和按键按下信号清零
            pressed_time <= 0;
            pressed <= 0;
        end else begin
            if (!sw) begin
                // 如果开关信号为低电平（未按下），将按键按下时间和按键按下信号清零
                pressed_time <= 0;
                pressed <= 0;
            end else if (pressed_time == 40) begin
                // 按键按下时间达到40滴答（长按），设置按键按下信号并清零按下时间
                pressed <= 1;
                pressed_time <= 0;
            end else begin
                // 按键按下时间未达到40滴答，自增1
                pressed_time <= pressed_time + 1;
            end
        end
    end
endmodule

// 模块 countdown 实现倒计时功能
module countdown
#(parameter CPS = 100_000_000)   // 每秒时钟数
(
    input clk,                    // 时钟信号
    output[7:0] led_out,          // 8位LED输出
    input[4:0] sw_in              // 5位开关输入
);

    // 定义状态参数
    localparam ST_SETTIME = 3'd0;  // 设置时间状态
    localparam ST_COUNT = 3'd1;    // 倒计时状态
    localparam ST_BLINK = 3'd2;    // 闪烁状态
    
    reg[2:0] state;                // 当前状态寄存器
    
    // 开关输入信号取反后赋值给 sw_high
    wire[4:0] sw_high;
    assign sw_high = ~sw_in;
    
    // 从 sw_high 中提取特定的开关信号
    wire sw_increase = sw_high[2];
    wire sw_start = sw_high[0];
    wire sw_stopwatch = sw_high[1];
    wire sw_rst = sw_high[4];
    wire sw_decrease = sw_high[3];
    
    reg[7:0] settime;              // 设置时间寄存器
    reg[3:0] settime_blink;        // 设置时间闪烁寄存器
    
    reg[7:0] currtime;             // 当前时间寄存器
    reg[7:0] currtick;             // 当前滴答计数寄存器
    reg paused;                    // 暂停状态寄存器
    reg countup;                   // 计时方向寄存器（计数增加/减少）
    
    reg[7:0] display;              // 显示寄存器
    assign led_out = ~display;     // LED输出信号取反
    
    // 实例化 tick_generator 模块
    wire[3:0] ticks;
    tick_generator #(.CPS(CPS), .TPS(20)) tg1(.clk(clk), .rst(sw_rst), .ticks(ticks));
    
    // 实例化按键检测模块
    wire pressed_start;
    sw_press_detect swpd_start(.tick(ticks[0]), .rst(sw_rst), .sw(sw_start), .pressed(pressed_start));
    wire pressed_stopwatch;
    sw_press_detect swpd_stopwatch(.tick(ticks[0]), .rst(sw_rst), .sw(sw_stopwatch), .pressed(pressed_stopwatch));
    wire pressed_increase;
    sw_press_detect swpd_increase(.tick(ticks[0]), .rst(sw_rst), .sw(sw_increase), .pressed(pressed_increase));
    wire longpressed_increase;
    sw_longpress_detect swlpd_increase(.tick(ticks[0]), .rst(sw_rst), .sw(sw_increase), .pressed(longpressed_increase));
    wire pressed_decrease;
    sw_press_detect swpd_decrease(.tick(ticks[0]), .rst(sw_rst), .sw(sw_decrease), .pressed(pressed_decrease));
    wire longpressed_decrease;
    sw_longpress_detect swlpd_decrease(.tick(ticks[0]), .rst(sw_rst), .sw(sw_decrease), .pressed(longpressed_decrease));
    
    // 使用 ticks[0] 作为主要的滴答信号
    wire tick = ticks[0];
    
    // 始终块，在复位信号上升沿或滴答信号上升沿触发
    always @(posedge sw_rst or posedge tick) begin
        if (sw_rst) begin
            // 复位信号有效时，将所有状态和寄存器清零
            state <= ST_SETTIME;
            settime <= 0;
            settime_blink <= 0;
            display <= 0;
            currtime <= 0;
            currtick <= 0;
            paused <= 0;
            countup <= 0;
        end else begin
            // 根据当前状态执行不同的逻辑
            case (state)
                ST_SETTIME: begin
                    // 设置时间状态
                    if (pressed_increase || longpressed_increase) begin
                        // 增加时间
                        if (settime == 8'hff) begin
                            settime <= 8'hff; // 保持最大值
                        end else begin
                            settime <= settime + 1;
                        end
                    end
                    if (pressed_decrease || longpressed_decrease) begin
                        // 减少时间
                        if (settime == 8'h00) begin
                            settime <= 8'h00; // 保持最小值
                        end else begin
                            settime <= settime - 1;
                        end
                    end
                    if (pressed_start) begin
                        // 开始倒计时
                        currtime <= settime;
                        currtick <= 20;
                        countup <= 0;
                        paused <= 0;
                        state <= ST_COUNT;
                    end
                    if (pressed_stopwatch) begin
                        // 开始计时
                        currtime <= 0;
                        currtick <= 20;
                        countup <= 1;
                        paused <= 0;
                        state <= ST_COUNT;
                    end
                    display <= settime; // 显示设置时间
                end
                ST_COUNT: begin
                    // 计时状态
                    if (pressed_start) begin
                        // 切换暂停/继续
                        paused <= !paused;
                    end else if (pressed_increase || pressed_decrease) begin
                        // 切换到设置时间状态
                        state <= ST_SETTIME;
                    end else begin
                        if (!paused) begin
                            // 未暂停时，更新计时器
                            if (currtick == 0) begin
                                if (!countup)
                                    currtime <= currtime - 1; // 倒计时
                                else
                                    currtime <= currtime + 1; // 计时
                                currtick <= 19;
                            end else begin
                                currtick <= currtick - 1;
                            end
                        end
                    end
                    display <= currtime; // 显示当前时间
                end
                default: state <= ST_SETTIME; // 默认状态为设置时间状态
            endcase
        end
    end
    
endmodule