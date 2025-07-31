library verilog;
use verilog.vl_types.all;
entity UC_detector_error is
    port(
        ERROR           : out    vl_logic;
        UP_DOWN         : in     vl_logic;
        VF              : in     vl_logic_vector(11 downto 0);
        VI              : in     vl_logic_vector(11 downto 0)
    );
end UC_detector_error;
