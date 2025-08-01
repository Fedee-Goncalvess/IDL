library verilog;
use verilog.vl_types.all;
entity UC_de_UC_vlg_sample_tst is
    port(
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        FINDET          : in     vl_logic;
        LOAD_I          : in     vl_logic;
        PAUSADET        : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        UP_DOWN_i       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end UC_de_UC_vlg_sample_tst;
