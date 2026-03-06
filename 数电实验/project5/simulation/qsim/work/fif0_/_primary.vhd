library verilog;
use verilog.vl_types.all;
entity \fif0_\ is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        wr_en           : in     vl_logic;
        rd_en           : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        full            : out    vl_logic;
        empty           : out    vl_logic
    );
end \fif0_\;
