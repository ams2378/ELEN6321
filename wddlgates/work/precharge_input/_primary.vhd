library verilog;
use verilog.vl_types.all;
entity precharge_input is
    port(
        a_i             : in     vl_logic;
        prechrg_i       : in     vl_logic;
        a_o             : out    vl_logic;
        not_a_o         : out    vl_logic
    );
end precharge_input;
