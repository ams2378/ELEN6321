INVXLTS U3 ( .A(d1_n_in), .Y(n1) );
INVXLTS U4 ( .A(n1), .Y(n2) );
INVXLTS U5 ( .A(d1_p_in), .Y(n3) );
INVXLTS U6 ( .A(n3), .Y(n4) );
INVXLTS U7 ( .A(d0_p_in), .Y(n5) );
INVXLTS U8 ( .A(n5), .Y(n6) );
INVXLTS U9 ( .A(d0_n_in), .Y(n7) );
INVXLTS U10 ( .A(n7), .Y(n8) );
OA22X1TS U11 ( .A0(n8), .A1(n4), .B0(n6), .B1(n2), .Y(d_n_out) );
AO22X1TS U12 ( .A0(n8), .A1(n4), .B0(n6), .B1(n2), .Y(d_p_out) );
endmodule