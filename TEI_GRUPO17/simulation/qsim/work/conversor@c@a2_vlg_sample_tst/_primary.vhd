library verilog;
use verilog.vl_types.all;
entity conversorCA2_vlg_sample_tst is
    port(
        b0_i            : in     vl_logic;
        b1_i            : in     vl_logic;
        b2_i            : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end conversorCA2_vlg_sample_tst;
