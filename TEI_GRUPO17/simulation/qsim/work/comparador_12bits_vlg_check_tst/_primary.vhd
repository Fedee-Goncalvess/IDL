library verilog;
use verilog.vl_types.all;
entity comparador_12bits_vlg_check_tst is
    port(
        AeqB            : in     vl_logic;
        AmayB           : in     vl_logic;
        AmenB           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end comparador_12bits_vlg_check_tst;
