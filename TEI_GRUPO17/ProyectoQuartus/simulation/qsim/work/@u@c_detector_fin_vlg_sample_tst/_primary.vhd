library verilog;
use verilog.vl_types.all;
entity UC_detector_fin_vlg_sample_tst is
    port(
        Cout            : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        VC              : in     vl_logic_vector(11 downto 0);
        VF              : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end UC_detector_fin_vlg_sample_tst;
