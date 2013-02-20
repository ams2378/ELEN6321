INVXLTS U7 ( .A(b_i), .Y(n9) );
INVXLTS U8 ( .A(n9), .Y(n10) );
INVXLTS U9 ( .A(prechrg_i), .Y(n11) );
INVXLTS U10 ( .A(n11), .Y(n12) );
INVXLTS U11 ( .A(a_i), .Y(n13) );
INVXLTS U12 ( .A(n13), .Y(n14) );
NOR2XLTS U13 ( .A(n14), .B(n16), .Y(nor_o) );
OR2XLTS U14 ( .A(n12), .B(n10), .Y(n16) );
NOR2XLTS U15 ( .A(n12), .B(n15), .Y(or_o) );
NOR2XLTS U16 ( .A(n14), .B(n10), .Y(n15) );
endmodule