library verilog;
use verilog.vl_types.all;
entity UC_de_UA_vlg_sample_tst is
    port(
        LOAD_F          : in     vl_logic;
        LOAD_I          : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end UC_de_UA_vlg_sample_tst;
