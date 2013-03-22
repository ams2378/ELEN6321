
module aes_xor ( clk, ld_r, text_in, w_i, sa_i, sa_o );
  input [7:0] text_in;
  input [7:0] w_i;
  input [7:0] sa_i;
  output [7:0] sa_o;
  input clk, ld_r;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n11, n13, n15, n17, n19, n21, n23,
         n25, n60, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111;

  XOR2X1TS U12 ( .A(n102), .B(n86), .Y(n8) );
  XOR2X1TS U13 ( .A(n98), .B(n82), .Y(n7) );
  XOR2X1TS U14 ( .A(n94), .B(n78), .Y(n6) );
  XOR2X1TS U18 ( .A(n108), .B(n92), .Y(n2) );
  XOR2X1TS U15 ( .A(n96), .B(n80), .Y(n5) );
  XOR2X1TS U16 ( .A(n100), .B(n84), .Y(n4) );
  XOR2X1TS U17 ( .A(n104), .B(n88), .Y(n3) );
  XOR2X1TS U11 ( .A(n106), .B(n90), .Y(n9) );
  SDFFQXLTS \sa_o_reg[7]  ( .D(sa_i[7]), .SI(n2), .SE(n110), .CK(clk), .Q(sa_o[7])
         );
  SDFFQXLTS \sa_o_reg[6]  ( .D(sa_i[6]), .SI(n3), .SE(n111), .CK(clk), .Q(sa_o[6])
         );
  SDFFQXLTS \sa_o_reg[5]  ( .D(sa_i[5]), .SI(n4), .SE(n111), .CK(clk), .Q(sa_o[5])
         );
  SDFFQXLTS \sa_o_reg[4]  ( .D(sa_i[4]), .SI(n5), .SE(n110), .CK(clk), .Q(sa_o[4])
         );
  SDFFQXLTS \sa_o_reg[3]  ( .D(sa_i[3]), .SI(n6), .SE(n111), .CK(clk), .Q(sa_o[3])
         );
  SDFFQXLTS \sa_o_reg[2]  ( .D(sa_i[2]), .SI(n7), .SE(n110), .CK(clk), .Q(sa_o[2])
         );
  SDFFQXLTS \sa_o_reg[1]  ( .D(sa_i[1]), .SI(n8), .SE(n110), .CK(clk), .Q(sa_o[1])
         );
  SDFFQXLTS \sa_o_reg[0]  ( .D(sa_i[0]), .SI(n9), .SE(n111), .CK(clk), .Q(sa_o[0])
         );
  INVX1TS U19 ( .A(n91), .Y(n92) );
  INVX1TS U20 ( .A(n87), .Y(n88) );
  INVX1TS U21 ( .A(n99), .Y(n100) );
  INVX1TS U22 ( .A(n83), .Y(n84) );
  INVX1TS U23 ( .A(n95), .Y(n96) );
  INVX1TS U24 ( .A(n109), .Y(n111) );
  INVX1TS U25 ( .A(n107), .Y(n108) );
  INVX1TS U26 ( .A(n79), .Y(n80) );
  INVX1TS U27 ( .A(n103), .Y(n104) );
  INVX1TS U28 ( .A(n109), .Y(n110) );
  INVX1TS U29 ( .A(n101), .Y(n102) );
  INVX1TS U30 ( .A(n85), .Y(n86) );
  INVX1TS U31 ( .A(n89), .Y(n90) );
  INVX1TS U32 ( .A(n97), .Y(n98) );
  INVX1TS U33 ( .A(n105), .Y(n106) );
  INVX1TS U34 ( .A(n81), .Y(n82) );
  INVX1TS U35 ( .A(n93), .Y(n94) );
  INVX1TS U36 ( .A(n77), .Y(n78) );
  INVXLTS U37 ( .A(text_in[3]), .Y(n77) );
  INVXLTS U38 ( .A(text_in[4]), .Y(n79) );
  INVXLTS U39 ( .A(text_in[2]), .Y(n81) );
  INVXLTS U40 ( .A(text_in[5]), .Y(n83) );
  INVXLTS U41 ( .A(text_in[1]), .Y(n85) );
  INVXLTS U42 ( .A(text_in[6]), .Y(n87) );
  INVXLTS U43 ( .A(text_in[0]), .Y(n89) );
  INVXLTS U44 ( .A(text_in[7]), .Y(n91) );
  INVXLTS U45 ( .A(w_i[3]), .Y(n93) );
  INVXLTS U46 ( .A(w_i[4]), .Y(n95) );
  INVXLTS U47 ( .A(w_i[2]), .Y(n97) );
  INVXLTS U48 ( .A(w_i[5]), .Y(n99) );
  INVXLTS U49 ( .A(w_i[1]), .Y(n101) );
  INVXLTS U50 ( .A(w_i[6]), .Y(n103) );
  INVXLTS U51 ( .A(w_i[0]), .Y(n105) );
  INVXLTS U52 ( .A(w_i[7]), .Y(n107) );
  INVXLTS U53 ( .A(ld_r), .Y(n109) );
endmodule

