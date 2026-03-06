library verilog;
use verilog.vl_types.all;
entity alu_vlg_sample_tst is
    port(
        A0_B1           : in     vl_logic;
        A0_B2           : in     vl_logic;
        CN              : in     vl_logic;
        \IN\            : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic;
        Sclk            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end alu_vlg_sample_tst;
