
module wddland ( a_i, b_i, prechrg_i, and_o, nand_o );
  input a_i, b_i, prechrg_i;
  output and_o, nand_o;
  wire   n5, n6;

  NOR2XLTS U7 ( .A(prechrg_i), .B(n5), .Y(nand_o) );
  AND2XLTS U8 ( .A(a_i), .B(b_i), .Y(n5) );
  AND2XLTS U9 ( .A(b_i), .B(n6), .Y(and_o) );
  NOR2BX1TS U10 ( .AN(a_i), .B(prechrg_i), .Y(n6) );
endmodule

