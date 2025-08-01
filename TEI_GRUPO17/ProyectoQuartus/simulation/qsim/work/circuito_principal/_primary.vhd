library verilog;
use verilog.vl_types.all;
entity circuito_principal is
    port(
        PAUSA           : out    vl_logic;
        RUN             : out    vl_logic;
        IenVI_UC        : out    vl_logic;
        CLK             : in     vl_logic;
        DATA            : inout  vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(2 downto 0);
        LOAD_I          : in     vl_logic;
        LOAD_F          : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        RECARGAR        : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        START           : in     vl_logic;
        ERROR           : out    vl_logic;
        FIN             : out    vl_logic;
        Ien_UA          : out    vl_logic
    );
end circuito_principal;
