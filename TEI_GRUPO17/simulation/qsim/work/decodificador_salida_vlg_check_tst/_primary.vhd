library verilog;
use verilog.vl_types.all;
entity decodificador_salida_vlg_check_tst is
    port(
        Ien             : in     vl_logic;
        Q0_UA           : in     vl_logic;
        Q0_UC           : in     vl_logic;
        Q0_UE           : in     vl_logic;
        Q1_UA           : in     vl_logic;
        Q1_UC           : in     vl_logic;
        Q1_UE           : in     vl_logic;
        Q2_UC           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end decodificador_salida_vlg_check_tst;
