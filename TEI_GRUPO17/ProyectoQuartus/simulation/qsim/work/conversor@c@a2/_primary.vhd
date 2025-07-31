library verilog;
use verilog.vl_types.all;
entity conversorCA2 is
    port(
        B               : out    vl_logic_vector(11 downto 0);
        UP_DOWN         : in     vl_logic;
        b2_i            : in     vl_logic;
        b1_i            : in     vl_logic;
        b0_i            : in     vl_logic
    );
end conversorCA2;
