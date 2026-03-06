library verilog;
use verilog.vl_types.all;
entity countdown_vlg_check_tst is
    port(
        led_out         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end countdown_vlg_check_tst;
