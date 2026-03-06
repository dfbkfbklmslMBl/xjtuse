library verilog;
use verilog.vl_types.all;
entity fifo_controller_vlg_check_tst is
    port(
        data_count      : in     vl_logic_vector(6 downto 0);
        data_out        : in     vl_logic_vector(7 downto 0);
        empty           : in     vl_logic;
        full            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fifo_controller_vlg_check_tst;
