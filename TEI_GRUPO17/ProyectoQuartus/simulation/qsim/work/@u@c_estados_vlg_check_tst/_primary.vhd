library verilog;
use verilog.vl_types.all;
entity UC_estados_vlg_check_tst is
    port(
        ERROR           : in     vl_logic;
        FIN             : in     vl_logic;
        PAUSA           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UC_estados_vlg_check_tst;
