module cpu_core(
    input wire clk,           // 时钟输入
    input wire rst_n,         // 低电平有效的复位信号
    // 存储器接口
    output reg [15:0] addr,   // 地址总线
    output reg [7:0] data_out,// 数据输出
    input wire [7:0] data_in, // 数据输入
    output reg rd_n,          // 读信号
    output reg wr_n,          // 写信号
    output reg data_en,       // 数据使能信号
    // 游戏控制接口
    output reg [7:0] game_status,  // 游戏状态
    input wire [7:0] game_input    // 游戏输入
);

// 内部寄存器定义
reg [7:0] acc;           // 累加器
reg [7:0] b;             // B寄存器
reg [15:0] pc;           // 程序计数器
reg [7:0] psw;           // 程序状态字
reg [7:0] sp;            // 堆栈指针
reg [7:0] dptr;          // 数据指针

// 指令寄存器
reg [7:0] ir;            // 指令寄存器
reg [7:0] ir_next;       // 下一条指令

// 状态机状态定义
localparam FETCH = 2'b00;
localparam DECODE = 2'b01;
localparam EXECUTE = 2'b10;
reg [1:0] state;

// 时钟分频计数器
reg [7:0] clk_div;

// 主要状态机
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= FETCH;
        pc <= 16'h0000;
        acc <= 8'h00;
        b <= 8'h00;
        psw <= 8'h00;
        sp <= 8'h07;
        dptr <= 8'h00;
        clk_div <= 8'h00;
        data_en <= 1'b0;
    end else begin
        case (state)
            FETCH: begin
                // 取指令阶段
                addr <= pc;
                rd_n <= 1'b0;
                wr_n <= 1'b1;
                data_en <= 1'b0;
                ir_next <= data_in;
                pc <= pc + 1;
                state <= DECODE;
            end
            
            DECODE: begin
                // 解码阶段
                ir <= ir_next;
                state <= EXECUTE;
            end
            
            EXECUTE: begin
                // 执行阶段
                case (ir)
                    8'h74: begin  // MOV A, #data
                        acc <= data_in;
                        pc <= pc + 1;
                    end
                    
                    8'hE4: begin  // CLR A
                        acc <= 8'h00;
                    end
                    
                    8'hF4: begin  // CPL A
                        acc <= ~acc;
                    end
                    
                    8'h23: begin  // RL A
                        acc <= {acc[6:0], acc[7]};
                    end
                    
                    8'h33: begin  // RLC A
                        acc <= {acc[6:0], psw[0]};
                        psw[0] <= acc[7];
                    end
                    
                    8'h80: begin  // SJMP rel
                        pc <= pc + data_in;
                    end
                    
                    8'h20: begin  // JB bit, rel
                        if (psw[data_in[4:0]])
                            pc <= pc + data_in;
                        else
                            pc <= pc + 1;
                    end
                    
                    8'h30: begin  // JNB bit, rel
                        if (!psw[data_in[4:0]])
                            pc <= pc + data_in;
                        else
                            pc <= pc + 1;
                    end
                    
                    8'hD2: begin  // SETB bit
                        psw[data_in[4:0]] <= 1'b1;
                        pc <= pc + 1;
                    end
                    
                    8'hC2: begin  // CLR bit
                        psw[data_in[4:0]] <= 1'b0;
                        pc <= pc + 1;
                    end
                    
                    default: begin  // 默认情况
                        pc <= pc + 1;
                    end
                endcase
                state <= FETCH;
            end
        endcase
    end
end

endmodule 