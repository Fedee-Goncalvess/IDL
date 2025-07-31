library verilog;
use verilog.vl_types.all;
entity circuito_principal_vlg_sample_tst is
    port(
        b               : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        DATA            : in     vl_logic_vector(11 downto 0);
        LOAD_F          : in     vl_logic;
        LOAD_I          : in     vl_logic;
        RECARGAR        : in     vl_logic;
        START           : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end circuito_principal_vlg_sample_tst;
