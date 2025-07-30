library verilog;
use verilog.vl_types.all;
entity sumador_12bits_serie is
    port(
        Cout            : out    vl_logic;
        Cin             : in     vl_logic;
        A               : in     vl_logic_vector(11 downto 0);
        B               : in     vl_logic_vector(11 downto 0);
        S               : out    vl_logic_vector(11 downto 0)
    );
end sumador_12bits_serie;
