module LED_Control (
    
    input wire clk,           // 时钟信号
    input wire rst,           // 复位信号
    input wire button,        // 按键输入
    output reg led            // LED输出
);

    // 状态编码
    parameter IDLE = 2'b00;
    parameter LED_ON = 2'b01;
    parameter LED_BLINK_SLOW = 2'b10;
    parameter LED_BLINK_FAST = 2'b11;

    reg [1:0] state, next_state;
    reg [23:0] counter;

    // 状态寄存器更新逻辑
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end

    // 按键检测和防抖动
    reg button_sync_0, button_sync_1;
    always @(posedge clk) begin
        button_sync_0 <= button;
        button_sync_1 <= button_sync_0;
    end

    wire button_debounced = button_sync_1;

    reg button_prev;
    always @(posedge clk or posedge rst) begin
        if (rst)
            button_prev <= 1'b0;
        else
            button_prev <= button_debounced;
    end

    wire button_pushed = (button_debounced & ~button_prev);

    // 状态转移和输出逻辑
    always @(*) begin
        // 初始化默认值
        next_state = state;
        led = (state == LED_ON);

        if (state == LED_BLINK_SLOW)
            led = (counter[22] == 1'b1);
        else if (state == LED_BLINK_FAST)
            led = (counter[20] == 1'b1);

        case (state)
            IDLE: begin
                if (button_pushed)
                    next_state = LED_ON;
            end

            LED_ON: begin
                if (button_pushed)
                    next_state = LED_BLINK_SLOW;
            end

            LED_BLINK_SLOW: begin
                if (button_pushed)
                    next_state = LED_BLINK_FAST;
            end

            LED_BLINK_FAST: begin
                if (button_pushed)
                    next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end

    // 计数器用于闪烁控制
    always @(posedge clk or posedge rst) begin
        if (rst)
            counter <= 24'd0;
        else
            counter <= counter + 1;
    end
endmodule