library verilog;
use verilog.vl_types.all;
entity exercise2 is
    port(
        T1              : out    vl_logic;
        RST1            : in     vl_logic;
        CLK1            : in     vl_logic;
        T2              : out    vl_logic;
        T3              : out    vl_logic;
        T4              : out    vl_logic;
        pin_name1       : in     vl_logic
    );
end exercise2;
