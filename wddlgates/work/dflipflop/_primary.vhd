library verilog;
use verilog.vl_types.all;
entity dflipflop is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic
    );
end dflipflop;
