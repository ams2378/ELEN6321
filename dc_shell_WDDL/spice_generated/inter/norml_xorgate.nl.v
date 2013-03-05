INVXLTS U2 ( .A(d0_p_in), .Y(n1) );
INVXLTS U3 ( .A(n1), .Y(n2) );
INVXLTS U4 ( .A(d1_p_in), .Y(n3) );
INVXLTS U5 ( .A(n3), .Y(n4) );
XOR2X1TS U6 ( .A(n4), .B(n2), .Y(d_p_out) );
endmodule