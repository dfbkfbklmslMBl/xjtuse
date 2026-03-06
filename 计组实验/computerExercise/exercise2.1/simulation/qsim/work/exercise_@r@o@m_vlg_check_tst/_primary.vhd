library verilog;
use verilog.vl_types.all;
entity exercise_ROM_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(23 downto 0);
        sampler_rx      : in     vl_logic
    );
end exercise_ROM_vlg_check_tst;
