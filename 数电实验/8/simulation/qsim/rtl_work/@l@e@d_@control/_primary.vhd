library verilog;
use verilog.vl_types.all;
entity LED_Control is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        button          : in     vl_logic;
        led             : out    vl_logic
    );
end LED_Control;
