library verilog;
use verilog.vl_types.all;
entity UC_detector_error_vlg_check_tst is
    port(
        ERROR           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UC_detector_error_vlg_check_tst;
