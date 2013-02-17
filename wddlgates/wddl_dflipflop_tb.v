module wddl_dflipflop_tb();

//module dflipflop(clk, d, q);
reg prechrg_i,d_i,clk;
wire q_o,qbar_o;

wddl_dflipflop floptest(
	.d_i(d_i)      , // first input
	.prechrg_i(prechrg_i)     , // precharge evaluate signal input
	.clk(clk),
 	.q_o(q_o),       // and output
	.qbar_o(qbar_o)
);

initial
begin
	clk=0;
	prechrg_i=0;
	forever begin 
		#10 clk = ~clk;
	 end
end 

always @(negedge clk)
begin
prechrg_i = ~prechrg_i;
end




initial 
	begin
		@(posedge prechrg_i)
		d_i=1;
		@(posedge prechrg_i)
		d_i=0;
		@(posedge prechrg_i)
		d_i=1;
		@(posedge prechrg_i)
		d_i=0;
		@(posedge prechrg_i)
		d_i=0;
		@(posedge prechrg_i)
		d_i=0;
		
	end
	
endmodule