XNOR2X1TS U5 ( .A(lfsr_out23), .B(lfsr_out16), .Y(n30) );
DFFSXLTS \lfsr_out_reg1  ( .D(n28), .CK(clk), .SN(n34), .Q(n27), .QN(lfsr_out1) );
DFFSXLTS \lfsr_out_reg2  ( .D(n27), .CK(clk), .SN(n36), .Q(n26), .QN(lfsr_out2) );
DFFSXLTS \lfsr_out_reg3  ( .D(n26), .CK(clk), .SN(n34),.Q(n25),.QN(lfsr_out3) );
DFFSXLTS \lfsr_out_reg4  ( .D(n25), .CK(clk), .SN(n34), .Q(n24), .QN(lfsr_out4) );
DFFSXLTS \lfsr_out_reg5  ( .D(n24), .CK(clk), .SN(n35), .Q(n23), .QN(lfsr_out5) );
DFFSXLTS \lfsr_out_reg6  ( .D(n23), .CK(clk), .SN(n35), .Q(n22), .QN(lfsr_out6) );
DFFSXLTS \lfsr_out_reg7  ( .D(n22), .CK(clk), .SN(n35), .Q(n21), .QN(lfsr_out7) );
DFFSXLTS \lfsr_out_reg8  ( .D(n21), .CK(clk), .SN(n35), .Q(n20), .QN(lfsr_out8) );
DFFSXLTS \lfsr_out_reg9  ( .D(n20), .CK(clk), .SN(n32), .Q(n19), .QN(lfsr_out9) );
DFFSXLTS \lfsr_out_reg10  ( .D(n19), .CK(clk), .SN(n38), .Q(n18), .QN(lfsr_out10) );
DFFSXLTS \lfsr_out_reg11  ( .D(n18), .CK(clk), .SN(n38), .Q(n17), .QN(lfsr_out11) );
DFFSXLTS \lfsr_out_reg12  ( .D(n17), .CK(clk), .SN(n39), .Q(n16), .QN(lfsr_out12) );
DFFSXLTS \lfsr_out_reg13  ( .D(n16), .CK(clk), .SN(n36), .Q(n15), .QN(lfsr_out13) );
DFFSXLTS \lfsr_out_reg14  ( .D(n15), .CK(clk), .SN(n36), .Q(n14), .QN(lfsr_out14) );
DFFSXLTS \lfsr_out_reg15  ( .D(n14), .CK(clk), .SN(n36), .Q(n13), .QN(lfsr_out15) );
DFFSXLTS \lfsr_out_reg17  ( .D(n12), .CK(clk), .SN(n39), .Q(n11), .QN(lfsr_out17) );
DFFSXLTS \lfsr_out_reg18  ( .D(n11), .CK(clk), .SN(n40), .Q(n10), .QN(lfsr_out18) );
DFFSXLTS \lfsr_out_reg19  ( .D(n10), .CK(clk), .SN(n40), .Q(n9), .QN(lfsr_out19) );
DFFSXLTS \lfsr_out_reg20  ( .D(n9), .CK(clk), .SN(n37), .Q(n8), .QN(lfsr_out20) );
DFFSXLTS \lfsr_out_reg21  ( .D(n8), .CK(clk), .SN(n37), .Q(n7), .QN(lfsr_out21) );
DFFSXLTS \lfsr_out_reg22  ( .D(n7), .CK(clk), .SN(n37), .Q(n6), .QN(lfsr_out22) );
DFFSXLTS \lfsr_out_reg24  ( .D(n5), .CK(clk), .SN(n38), .Q(n4), .QN(lfsr_out24) );
DFFSXLTS \lfsr_out_reg25  ( .D(n4), .CK(clk), .SN(n41), .Q(n3), .QN(lfsr_out25) );
DFFSXLTS \lfsr_out_reg26  ( .D(n3), .CK(clk), .SN(n41), .Q(n2), .QN(lfsr_out26) );
DFFSXLTS \lfsr_out_reg16  ( .D(n13), .CK(clk), .SN(n40), .Q(n12), .QN(lfsr_out16) );
DFFSXLTS \lfsr_out_reg23  ( .D(n6), .CK(clk), .SN(n37), .Q(n5), .QN(lfsr_out23) );
DFFSXLTS \lfsr_out_reg27  ( .D(n2), .CK(clk), .SN(n41), .QN(lfsr_out27));
DFFRX1TS \lfsr_out_reg0  ( .D(N1), .CK(clk), .RN(n34), .Q(lfsr_out0),.QN(n28) );
XOR2X1TS U4 ( .A(lfsr_out0), .B(n30), .Y(n29) );
XOR2X1TS U3 ( .A(lfsr_out27), .B(n29), .Y(N1) );
INVXLTS U6 ( .A(resetn), .Y(n31) );
INVXLTS U7 ( .A(n31), .Y(n32) );
CLKBUFX2TS U8 ( .A(n32), .Y(n35) );
CLKBUFX2TS U9 ( .A(n39), .Y(n36) );
CLKBUFX2TS U10 ( .A(n38), .Y(n37) );
CLKBUFX2TS U11 ( .A(n41), .Y(n38) );
CLKBUFX2TS U12 ( .A(n32), .Y(n41) );
CLKBUFX2TS U13 ( .A(n39), .Y(n34) );
CLKBUFX2TS U14 ( .A(n40), .Y(n39) );
CLKBUFX2TS U15 ( .A(n32), .Y(n40) );
endmodule