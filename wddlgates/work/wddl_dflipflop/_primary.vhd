library verilog;
use verilog.vl_types.all;
entity wddl_dflipflop is
    port(
        d_i             : in     vl_logic;
        prechrg_i       : in     vl_logic;
        clk             : in     vl_logic;
        q_o             : out    vl_logic;
        qbar_o          : out    vl_logic
    );
end wddl_dflipflop;
