library verilog;
use verilog.vl_types.all;
entity unidad_control is
    port(
        PAUSA           : out    vl_logic;
        ERROR           : out    vl_logic;
        FIN             : out    vl_logic;
        IenVI_UA        : out    vl_logic;
        LOAD_I          : in     vl_logic;
        LOAD_F          : in     vl_logic;
        IenVF_UA        : out    vl_logic;
        OenVI_UA        : out    vl_logic;
        Ienb_UC         : out    vl_logic;
        UP_DOWN         : in     vl_logic;
        CLK             : in     vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        OenVC_UC        : out    vl_logic;
        IenVI_UC        : out    vl_logic;
        PRUEBA1         : out    vl_logic;
        PRUEBA2         : out    vl_logic;
        Bout            : out    vl_logic_vector(11 downto 0);
        VF              : in     vl_logic_vector(11 downto 0);
        VI              : in     vl_logic_vector(11 downto 0);
        START           : in     vl_logic;
        RECARGAR        : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        Cout            : in     vl_logic;
        VC              : in     vl_logic_vector(11 downto 0)
    );
end unidad_control;
