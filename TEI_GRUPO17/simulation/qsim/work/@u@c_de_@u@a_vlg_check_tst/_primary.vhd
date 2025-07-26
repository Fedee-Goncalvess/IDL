library verilog;
use verilog.vl_types.all;
entity UC_de_UA_vlg_check_tst is
    port(
        IenVF_UA        : in     vl_logic;
        IenVI_UA        : in     vl_logic;
        OenVI_UA        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UC_de_UA_vlg_check_tst;
