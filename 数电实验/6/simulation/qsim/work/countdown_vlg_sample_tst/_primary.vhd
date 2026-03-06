library verilog;
use verilog.vl_types.all;
entity countdown_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sw_in           : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end countdown_vlg_sample_tst;
