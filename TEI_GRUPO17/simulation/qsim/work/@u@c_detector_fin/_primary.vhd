library verilog;
use verilog.vl_types.all;
entity UC_detector_fin is
    port(
        FIN             : out    vl_logic;
        VF              : in     vl_logic_vector(11 downto 0);
        VC              : in     vl_logic_vector(11 downto 0);
        UP_DOWN         : in     vl_logic;
        Cout            : in     vl_logic
    );
end UC_detector_fin;
