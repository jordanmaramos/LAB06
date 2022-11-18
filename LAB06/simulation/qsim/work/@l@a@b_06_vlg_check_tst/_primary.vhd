library verilog;
use verilog.vl_types.all;
entity LAB_06_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(3 downto 0);
        tc              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end LAB_06_vlg_check_tst;
