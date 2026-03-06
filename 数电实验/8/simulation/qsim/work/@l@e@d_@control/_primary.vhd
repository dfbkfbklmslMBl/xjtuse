library verilog;
use verilog.vl_types.all;
entity LED_Control is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        button1         : in     vl_logic;
        button2         : in     vl_logic;
        button3         : in     vl_logic;
        button4         : in     vl_logic;
        led             : out    vl_logic
    );
end LED_Control;
