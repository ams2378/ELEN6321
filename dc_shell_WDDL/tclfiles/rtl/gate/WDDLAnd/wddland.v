module wddland (
	a_i      , // first input
 	b_i      , // Second input
	prechrg_i    , // precharge evaluate signal input
 	and_o,       // and output
	nand_o
);
 //Input declaration
 input a_i;
 input b_i;
 input prechrg_i;
 //Ouput declaration
 output and_o;
 output nand_o;
 
 //Port Data types
 wire a_o, b_o, not_a_o, not_b_o,and_out, or_out;

 
  //Code starts here
precharge_input input_a(a_i,prechrg_i,a_o,not_a_o);
precharge_input input_b(b_i,prechrg_i,b_o,not_b_o);

and  and1(and_o,a_o,b_o);
or or1(nand_o,not_b_o,not_a_o);

endmodule // End of Module addbit
