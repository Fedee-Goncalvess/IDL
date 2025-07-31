library verilog;
use verilog.vl_types.all;
entity UC_de_UA is
    port(
        IenVI_UA        : out    vl_logic;
        LOAD_I          : in     vl_logic;
        Q1              : in     vl_logic;
        Q0              : in     vl_logic;
        IenVF_UA        : out    vl_logic;
        LOAD_F          : in     vl_logic;
        OenVI_UA        : out    vl_logic
    );
end UC_de_UA;
