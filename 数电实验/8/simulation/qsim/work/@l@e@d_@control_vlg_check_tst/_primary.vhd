library verilog;
use verilog.vl_types.all;
entity LED_Control_vlg_check_tst is
    port(
        led             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end LED_Control_vlg_check_tst;
