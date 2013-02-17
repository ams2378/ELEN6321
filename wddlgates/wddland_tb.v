module wddland_tb();
reg clk;
reg prechrg_i;
reg a_i;
reg b_i;


wire and_o;
wire nand_o;

wddland u1( 
  .a_i(a_i), 
  .b_i(b_i), 
  .prechrg_i(prechrg_i), 
  .and_o(and_o),
  .nand_o(nand_o)
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
		a_i= 1; b_i = 1;
	@(posedge prechrg_i) //will wait for next negative edge of the clock (t=20)
		a_i= 0; b_i = 1;

	@(posedge prechrg_i)
		a_i= 1; b_i = 1;
	@(posedge prechrg_i) //will wait for next negative edge of the clock (t=20)
		a_i= 0; b_i = 1;

//	 // to shut down the simulation
end //initial


endmodule