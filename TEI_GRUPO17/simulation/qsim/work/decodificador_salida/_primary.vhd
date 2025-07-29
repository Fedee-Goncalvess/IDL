library verilog;
use verilog.vl_types.all;
entity decodificador_salida is
    port(
        Q2_UC           : out    vl_logic;
        Q2              : in     vl_logic;
        Q1              : in     vl_logic;
        Q0              : in     vl_logic;
        Q1_UC           : out    vl_logic;
        Q0_UC           : out    vl_logic;
        Q1_UE           : out    vl_logic;
        Q0_UE           : out    vl_logic;
        Q1_UA           : out    vl_logic;
        Q0_UA           : out    vl_logic
    );
end decodificador_salida;
