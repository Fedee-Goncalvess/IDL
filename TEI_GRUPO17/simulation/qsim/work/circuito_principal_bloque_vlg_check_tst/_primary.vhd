library verilog;
use verilog.vl_types.all;
entity circuito_principal_bloque_vlg_check_tst is
    port(
        DATA            : in     vl_logic_vector(11 downto 0);
        ERROR           : in     vl_logic;
        FIN             : in     vl_logic;
        FINDET          : in     vl_logic;
        Ienb_UC         : in     vl_logic;
        IenVI_UC        : in     vl_logic;
        OenVC_UC        : in     vl_logic;
        PAUSA           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end circuito_principal_bloque_vlg_check_tst;
