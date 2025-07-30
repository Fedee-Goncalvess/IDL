library verilog;
use verilog.vl_types.all;
entity contador is
    port(
        C               : out    vl_logic;
        CLK             : in     vl_logic;
        OenSUM          : in     vl_logic;
        IenA            : in     vl_logic;
        IenB            : in     vl_logic;
        BidirBus        : inout  vl_logic_vector(11 downto 0);
        B               : in     vl_logic_vector(11 downto 0);
        regA            : out    vl_logic_vector(11 downto 0);
        regB            : out    vl_logic_vector(11 downto 0);
        suma            : out    vl_logic_vector(11 downto 0)
    );
end contador;
