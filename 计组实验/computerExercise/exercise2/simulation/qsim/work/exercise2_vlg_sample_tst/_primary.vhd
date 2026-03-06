library verilog;
use verilog.vl_types.all;
entity exercise2_vlg_sample_tst is
    port(
        CLK1            : in     vl_logic;
        pin_name1       : in     vl_logic;
        RST1            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exercise2_vlg_sample_tst;
