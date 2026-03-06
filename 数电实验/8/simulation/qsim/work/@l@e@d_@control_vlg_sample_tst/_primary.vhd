library verilog;
use verilog.vl_types.all;
entity LED_Control_vlg_sample_tst is
    port(
        button1         : in     vl_logic;
        button2         : in     vl_logic;
        button3         : in     vl_logic;
        button4         : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end LED_Control_vlg_sample_tst;
