library verilog;
use verilog.vl_types.all;
entity wddland_or is
    port(
        a_i             : in     vl_logic;
        b_i             : in     vl_logic;
        prechrg_i       : in     vl_logic;
        and_o           : out    vl_logic;
        nand_o          : out    vl_logic
    );
end wddland_or;
