module and ( a_i, b_i, out );
  input a_i, b_i;
  output out;

AND2XLTS U0 ( .A(a_i), .B(b_i), .Y(out) );

endmodule
