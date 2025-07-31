library verilog;
use verilog.vl_types.all;
entity comparador_1bit is
    port(
        AmayB           : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        I_AmayB         : in     vl_logic;
        AeqB            : out    vl_logic;
        I_AeqB          : in     vl_logic;
        AmenB           : out    vl_logic;
        I_AmenB         : in     vl_logic
    );
end comparador_1bit;
