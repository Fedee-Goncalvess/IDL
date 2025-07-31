library verilog;
use verilog.vl_types.all;
entity decodificador_salida_vlg_sample_tst is
    port(
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end decodificador_salida_vlg_sample_tst;
