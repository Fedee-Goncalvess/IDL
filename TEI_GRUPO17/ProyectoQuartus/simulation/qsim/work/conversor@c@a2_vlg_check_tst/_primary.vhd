library verilog;
use verilog.vl_types.all;
entity conversorCA2_vlg_check_tst is
    port(
        B               : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end conversorCA2_vlg_check_tst;
