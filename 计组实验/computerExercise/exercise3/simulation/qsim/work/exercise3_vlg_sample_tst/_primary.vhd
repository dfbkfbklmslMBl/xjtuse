library verilog;
use verilog.vl_types.all;
entity exercise3_vlg_sample_tst is
    port(
        CLK1            : in     vl_logic;
        RST1            : in     vl_logic;
        S0              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exercise3_vlg_sample_tst;
