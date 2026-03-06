library verilog;
use verilog.vl_types.all;
entity fifo_controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        wr_en           : in     vl_logic;
        rd_en           : in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0);
        full            : out    vl_logic;
        empty           : out    vl_logic;
        data_count      : out    vl_logic_vector(6 downto 0)
    );
end fifo_controller;
