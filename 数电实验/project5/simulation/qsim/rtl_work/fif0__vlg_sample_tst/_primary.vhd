library verilog;
use verilog.vl_types.all;
entity \fif0__vlg_sample_tst\ is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        rd_en           : in     vl_logic;
        rstn            : in     vl_logic;
        wr_en           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end \fif0__vlg_sample_tst\;
