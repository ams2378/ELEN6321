library verilog;
use verilog.vl_types.all;
entity wddl_or is
    port(
        a_i             : in     vl_logic;
        b_i             : in     vl_logic;
        prechrg_i       : in     vl_logic;
        or_o            : out    vl_logic;
        nor_o           : out    vl_logic
    );
end wddl_or;
