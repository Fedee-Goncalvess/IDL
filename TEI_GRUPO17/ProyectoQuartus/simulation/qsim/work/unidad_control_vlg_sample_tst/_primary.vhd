library verilog;
use verilog.vl_types.all;
entity unidad_control_vlg_sample_tst is
    port(
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        CLK             : in     vl_logic;
        CONTINUAR       : in     vl_logic;
        Cout            : in     vl_logic;
        LOAD_F          : in     vl_logic;
        LOAD_I          : in     vl_logic;
        RECARGAR        : in     vl_logic;
        START           : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        VC              : in     vl_logic_vector(11 downto 0);
        VF              : in     vl_logic_vector(11 downto 0);
        VI              : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end unidad_control_vlg_sample_tst;
