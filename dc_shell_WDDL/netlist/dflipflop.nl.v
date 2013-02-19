module and (clk,reset,d,q );
  input clk,reset,d;
  output q;

  DFFTRX2TS U0  ( .D(d), .RN(reset), .CK(clk), .Q(q) );

endmodule
