library verilog;
use verilog.vl_types.all;
entity comparador_12bits_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(11 downto 0);
        B               : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end comparador_12bits_vlg_sample_tst;
