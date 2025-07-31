library verilog;
use verilog.vl_types.all;
entity UC_detector_error_vlg_sample_tst is
    port(
        UP_DOWN         : in     vl_logic;
        VF              : in     vl_logic_vector(11 downto 0);
        VI              : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end UC_detector_error_vlg_sample_tst;
