library verilog;
use verilog.vl_types.all;
entity key_led_vlg_sample_tst is
    port(
        key             : in     vl_logic_vector(1 downto 0);
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end key_led_vlg_sample_tst;
