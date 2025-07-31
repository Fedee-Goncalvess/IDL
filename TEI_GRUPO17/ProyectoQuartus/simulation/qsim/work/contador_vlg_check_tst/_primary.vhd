library verilog;
use verilog.vl_types.all;
entity contador_vlg_check_tst is
    port(
        BidirBus        : in     vl_logic_vector(11 downto 0);
        C               : in     vl_logic;
        regA            : in     vl_logic_vector(11 downto 0);
        regB            : in     vl_logic_vector(11 downto 0);
        suma            : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end contador_vlg_check_tst;
