module or ( a_i, b_i, out );
  input a_i, b_i;
  output out;

OR2XLTS U0 ( .A(a_i), .B(b_i), .Y(out) );

endmodule
