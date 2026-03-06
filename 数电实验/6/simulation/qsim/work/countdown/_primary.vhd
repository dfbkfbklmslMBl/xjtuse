library verilog;
use verilog.vl_types.all;
entity countdown is
    port(
        clk             : in     vl_logic;
        led_out         : out    vl_logic_vector(7 downto 0);
        sw_in           : in     vl_logic_vector(4 downto 0)
    );
end countdown;
