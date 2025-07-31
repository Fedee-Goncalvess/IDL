library verilog;
use verilog.vl_types.all;
entity UC_estados is
    port(
        PAUSA           : out    vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        ERROR           : out    vl_logic;
        FIN             : out    vl_logic
    );
end UC_estados;
