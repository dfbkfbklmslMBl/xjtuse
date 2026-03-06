library verilog;
use verilog.vl_types.all;
entity fifo_controller_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        rd_en           : in     vl_logic;
        rst             : in     vl_logic;
        wr_en           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fifo_controller_vlg_sample_tst;
