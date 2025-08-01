library verilog;
use verilog.vl_types.all;
entity UC_de_UC_vlg_check_tst is
    port(
        Bo              : in     vl_logic_vector(11 downto 0);
        Ienb_UC         : in     vl_logic;
        IenVI_UC        : in     vl_logic;
        LOAD_VI         : in     vl_logic;
        OenVC_UC        : in     vl_logic;
        RUN             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UC_de_UC_vlg_check_tst;
