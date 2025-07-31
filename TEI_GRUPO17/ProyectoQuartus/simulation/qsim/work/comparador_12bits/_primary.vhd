library verilog;
use verilog.vl_types.all;
entity comparador_12bits is
    port(
        AmayB           : out    vl_logic;
        A               : in     vl_logic_vector(11 downto 0);
        B               : in     vl_logic_vector(11 downto 0);
        AeqB            : out    vl_logic;
        AmenB           : out    vl_logic
    );
end comparador_12bits;
