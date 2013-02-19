module precharge_input (
	a_i      , // first input
	prechrg_i    , // precharge evaluate signal input
 	a_o,       // and output
	not_a_o
);

input a_i;
input prechrg_i;
output a_o;
output not_a_o;
wire an;

nor nor1(not_a_o,a_i,prechrg_i);
nor nor2(a_o,an,prechrg_i);
not not2(an,a_i);
endmodule