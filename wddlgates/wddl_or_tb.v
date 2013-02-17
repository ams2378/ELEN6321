module wddl_or_tb();
reg clk;
reg prechrg_i;
reg a_i;
reg b_i;


wire or_o;
wire nor_o;

 
wddl_or u1( 
  .a_i(a_i), 
  .b_i(b_i), 
  .prechrg_i(prechrg_i), 
  .or_o(or_o),
  .nor_o(nor_o)
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
		a_i= 0; b_i = 0;
	@(posedge prechrg_i) //will wait for next negative edge of the clock (t=20)
		a_i= 0; b_i = 1;
end //initial


endmodule