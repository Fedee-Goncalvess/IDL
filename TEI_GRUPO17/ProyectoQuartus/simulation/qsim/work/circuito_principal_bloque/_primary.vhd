library verilog;
use verilog.vl_types.all;
entity circuito_principal_bloque is
    port(
        ERROR           : out    vl_logic;
        LOAD_I          : in     vl_logic;
        LOAD_F          : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        RECARGAR        : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        START           : in     vl_logic;
        CLK             : in     vl_logic;
        b               : in     vl_logic_vector(2 downto 0);
        DATA            : inout  vl_logic_vector(11 downto 0);
        FIN             : out    vl_logic;
        PAUSA           : out    vl_logic
    );
end circuito_principal_bloque;
