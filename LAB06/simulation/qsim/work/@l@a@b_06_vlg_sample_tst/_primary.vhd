library verilog;
use verilog.vl_types.all;
entity LAB_06_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        ld              : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end LAB_06_vlg_sample_tst;
