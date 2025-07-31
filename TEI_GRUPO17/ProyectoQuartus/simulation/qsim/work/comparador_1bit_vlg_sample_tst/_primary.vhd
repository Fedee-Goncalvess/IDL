library verilog;
use verilog.vl_types.all;
entity comparador_1bit_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        I_AeqB          : in     vl_logic;
        I_AmayB         : in     vl_logic;
        I_AmenB         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end comparador_1bit_vlg_sample_tst;
