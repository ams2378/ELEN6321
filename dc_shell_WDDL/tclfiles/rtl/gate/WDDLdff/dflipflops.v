module dflipflop(clk, d, q);
	input clk;
	input  d;
	output q;
	reg q;
 
	always @(posedge clk)
		q <= d;
		
endmodule