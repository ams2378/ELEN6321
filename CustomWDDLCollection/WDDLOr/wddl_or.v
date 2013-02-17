module wddl_or (
	a_i      , // first input
 	b_i      , // Second input
	prechrg_i    , // precharge evaluate signal input
 	or_o,       // and output
	nor_o
);
 //Input declaration
 input a_i;
 input b_i;
 input prechrg_i;
 //Ouput declaration
 output or_o;
 output nor_o;
 
 //Port Data types
 wire a_o, b_o, not_a_o, not_b_o;

 
  //Code starts here
precharge_input input_a(a_i,prechrg_i,a_o,not_a_o);
precharge_input input_b(b_i,prechrg_i,b_o,not_b_o);

or  or1(or_o,a_o,b_o);
and and1(nor_o,not_a_o,not_b_o);

endmodule // End of Module addbit
