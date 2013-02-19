
module wddl_dflipflop ( d_i, prechrg_i, clk, q_o, qbar_o );
  input d_i, prechrg_i, clk;
  output q_o, qbar_o;
  wire   d_bar_o, n6, n7, n8;

  DFFQX1TS \flop2/q_reg  ( .D(d_bar_o), .CK(clk), .Q(qbar_o) );
  DFFTRX2TS \flop1/q_reg  ( .D(n7), .RN(n8), .CK(clk), .Q(q_o) );
  NOR2BX1TS U3 ( .AN(n8), .B(n7), .Y(d_bar_o) );
  INVX1TS U4 ( .A(n6), .Y(n7) );
  INVXLTS U5 ( .A(d_i), .Y(n6) );
  INVXLTS U6 ( .A(prechrg_i), .Y(n8) );
endmodule

