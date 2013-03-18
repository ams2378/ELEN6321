module wddl_dflipflop (
	d_i      , // first input
	prechrg_i     , // precharge evaluate signal input
	clk,
 	q_o,       // and output
	qbar_o
);

//module dflipflop(clk, d, q);
input prechrg_i,clk,d_i;
output q_o,qbar_o;

wire d_bar_o,d_o;

//precharge_input (a_i, prechrg_i,a_o,not_a_o);

precharge_input input_d(d_i,prechrg_i,d_o,d_bar_o);

dflipflop flop1(clk,d_o,q_o);
dflipflop flop2(clk,d_bar_o,qbar_o);


endmodule