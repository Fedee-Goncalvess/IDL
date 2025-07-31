library verilog;
use verilog.vl_types.all;
entity contador_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(11 downto 0);
        BidirBus        : in     vl_logic_vector(11 downto 0);
        CLK             : in     vl_logic;
        IenA            : in     vl_logic;
        IenB            : in     vl_logic;
        OenSUM          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_vlg_sample_tst;
