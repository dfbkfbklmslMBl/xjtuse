library verilog;
use verilog.vl_types.all;
entity exercise_ROM_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exercise_ROM_vlg_sample_tst;
