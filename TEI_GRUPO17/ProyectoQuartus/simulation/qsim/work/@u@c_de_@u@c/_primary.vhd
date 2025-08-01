library verilog;
use verilog.vl_types.all;
entity UC_de_UC is
    port(
        OenVC_UC        : out    vl_logic;
        Q2              : in     vl_logic;
        Q0              : in     vl_logic;
        IenVI_UC        : out    vl_logic;
        Q1              : in     vl_logic;
        LOAD_I          : in     vl_logic;
        FINDET          : in     vl_logic;
        RUN             : out    vl_logic;
        LOAD_VI         : out    vl_logic;
        Ienb_UC         : out    vl_logic;
        Bo              : out    vl_logic_vector(11 downto 0);
        UP_DOWN_i       : in     vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        PAUSADET        : in     vl_logic
    );
end UC_de_UC;
