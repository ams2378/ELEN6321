.SUBCKT CLKBUFX2TS A Y VSS VDD
X0 VDD nmin Y VDD LPPFET W=1.3U L=0.12U M=1
X1 Y nmin VSS VSS LPNFET W=0.48U L=0.12U M=1
X2 VDD A nmin VDD LPPFET W=0.54U L=0.12U M=1
X3 nmin A VSS VSS LPNFET W=0.2U L=0.12U M=1
.ENDS CLKBUFX2TS

.SUBCKT INVXLTS A Y  VSS VDD
X0 VDD A Y VDD LPPFET W=0.34U L=0.12U M=1
X1 Y A VSS VSS LPNFET W=0.24U L=0.12U M=1
.ENDS INVXLTS

.SUBCKT DFFSXLTS CK D Q QN SN  VSS VDD
X0 net52 s VDD VDD LPPFET W=0.28U L=0.12U M=1
X1 m SN VDD VDD LPPFET W=0.28U L=0.12U M=1
X10 net82 c m VSS LPNFET W=0.2U L=0.12U M=1
X11 hnet21 D VSS VSS LPNFET W=0.2U L=0.12U M=1
X12 pm cn hnet21 VSS LPNFET W=0.2U L=0.12U M=1
X13 hnet23 c pm VDD LPPFET W=0.28U L=0.12U M=1
X14 VDD D hnet23 VDD LPPFET W=0.28U L=0.12U M=1
X15 hnet27 m VSS VSS LPNFET W=0.22U L=0.12U M=1
X16 pm c hnet27 VSS LPNFET W=0.22U L=0.12U M=1
X17 hnet29 cn pm VDD LPPFET W=0.28U L=0.12U M=1
X18 VDD m hnet29 VDD LPPFET W=0.28U L=0.12U M=1
X19 VDD s net91 VDD LPPFET W=0.28U L=0.12U M=1
X2 m pm VDD VDD LPPFET W=0.28U L=0.12U M=1
X20 net91 s VSS VSS LPNFET W=0.2U L=0.12U M=1
X21 VDD s Q VDD LPPFET W=0.34U L=0.12U M=1
X22 Q s VSS VSS LPNFET W=0.24U L=0.12U M=1
X23 VDD net82 s VDD LPPFET W=0.28U L=0.12U M=1
X24 s net82 VSS VSS LPNFET W=0.2U L=0.12U M=1
X25 VDD net91 QN VDD LPPFET W=0.34U L=0.12U M=1
X26 QN net91 VSS VSS LPNFET W=0.24U L=0.12U M=1
X27 VDD cn c VDD LPPFET W=0.28U L=0.12U M=1
X28 c cn VSS VSS LPNFET W=0.2U L=0.12U M=1
X29 VDD CK cn VDD LPPFET W=0.42U L=0.12U M=1
X3 net82 SN VDD VDD LPPFET W=0.28U L=0.12U M=1
X30 cn CK VSS VSS LPNFET W=0.3U L=0.12U M=1
X4 net82 c net52 VDD LPPFET W=0.28U L=0.12U M=1
X5 net82 cn m VDD LPPFET W=0.28U L=0.12U M=1
X6 m pm net76 VSS LPNFET W=0.3U L=0.12U M=1
X7 net73 s net76 VSS LPNFET W=0.2U L=0.12U M=1
X8 net76 SN VSS VSS LPNFET W=0.4U L=0.12U M=1
X9 net82 cn net73 VSS LPNFET W=0.2U L=0.12U M=1
.ENDS DFFSXLTS

.SUBCKT XOR2X1TS A B Y VSS VDD
X0 Y A net35 VDD LPPFET W=0.76U L=0.12U M=1
X1 Y nmin1 nmin2 VDD LPPFET W=0.78U L=0.12U M=1
X2 Y nmin1 net35 VSS LPNFET W=0.56U L=0.12U M=1
X3 Y A nmin2 VSS LPNFET W=0.54U L=0.12U M=1
X4 VDD A nmin1 VDD LPPFET W=0.3U L=0.12U M=1
X5 nmin1 A VSS VSS LPNFET W=0.22U L=0.12U M=1
X6 VDD nmin2 net35 VDD LPPFET W=0.76U L=0.12U M=1
X7 net35 nmin2 VSS VSS LPNFET W=0.56U L=0.12U M=1
X8 VDD B nmin2 VDD LPPFET W=0.78U L=0.12U M=1
X9 nmin2 B VSS VSS LPNFET W=0.54U L=0.12U M=1
.ENDS XOR2X1TS

.subckt lfsr1 clk resetn out gnd vdd 
xu13 n39 n34 gnd vdd CLKBUFX2TS
xu9 n39 n36 gnd vdd CLKBUFX2TS
xu8 n32 n35 gnd vdd CLKBUFX2TS
xu14 n40 n39 gnd vdd CLKBUFX2TS
xu15 n32 n40 gnd vdd CLKBUFX2TS
xu10 n38 n37 gnd vdd CLKBUFX2TS
xu11 n41 n38 gnd vdd CLKBUFX2TS
xu12 n32 n41 gnd vdd CLKBUFX2TS
xu7 n31 n32 gnd vdd INVXLTS
xu6 resetn n31 gnd vdd INVXLTS

xlfsr_out_reg__1__ clk n28 n27 out n34 gnd vdd DFFSXLTS
xlfsr_out_reg__2__ clk n27 n26 lfsr_out<2> n36 gnd vdd DFFSXLTS
xlfsr_out_reg__3__ clk n26 n25 lfsr_out<3> n34 gnd vdd DFFSXLTS
xlfsr_out_reg__5__ clk n24 n23 lfsr_out<5> n35 gnd vdd DFFSXLTS
xlfsr_out_reg__6__ clk n23 n22 lfsr_out<6> n35 gnd vdd DFFSXLTS
xlfsr_out_reg__7__ clk n22 n21 lfsr_out<7> n35 gnd vdd DFFSXLTS
xlfsr_out_reg__4__ clk n25 n24 lfsr_out<4> n34 gnd vdd DFFSXLTS
xlfsr_out_reg__9__ clk n20 n19 lfsr_out<9> n32 gnd vdd DFFSXLTS
xlfsr_out_reg__10__ clk n19 n18 lfsr_out<10> n38 gnd vdd DFFSXLTS
xlfsr_out_reg__11__ clk n18 n17 lfsr_out<11> n38 gnd vdd DFFSXLTS
xlfsr_out_reg__8__ clk n21 n20 lfsr_out<8> n35 gnd vdd DFFSXLTS
xlfsr_out_reg__13__ clk n16 n15 lfsr_out<13> n36 gnd vdd DFFSXLTS
xlfsr_out_reg__14__ clk n15 n14 lfsr_out<14> n36 gnd vdd DFFSXLTS
xlfsr_out_reg__15__ clk n14 n13 lfsr_out<15> n36 gnd vdd DFFSXLTS
xlfsr_out_reg__12__ clk n17 n16 lfsr_out<12> n39 gnd vdd DFFSXLTS
xlfsr_out_reg__17__ clk n12 n11 lfsr_out<17> n39 gnd vdd DFFSXLTS
xlfsr_out_reg__18__ clk n11 n10 lfsr_out<18> n40 gnd vdd DFFSXLTS
xlfsr_out_reg__19__ clk n10 n9 lfsr_out<19> n40 gnd vdd DFFSXLTS
xlfsr_out_reg__16__ clk n13 n12 lfsr_out<16> n40 gnd vdd DFFSXLTS
xlfsr_out_reg__21__ clk n8 n7 lfsr_out<21> n37 gnd vdd DFFSXLTS
xlfsr_out_reg__22__ clk n7 n6 lfsr_out<22> n37 gnd vdd DFFSXLTS
xlfsr_out_reg__23__ clk n6 n5 lfsr_out<23> n37 gnd vdd DFFSXLTS
xlfsr_out_reg__20__ clk n9 n8 lfsr_out<20> n37 gnd vdd DFFSXLTS
xlfsr_out_reg__25__ clk n4 n3 lfsr_out<25> n41 gnd vdd DFFSXLTS
xlfsr_out_reg__26__ clk n3 n2 lfsr_out<26> n41 gnd vdd DFFSXLTS
xlfsr_out_reg__27__ clk n2 nett_174 lfsr_out<27> n41 gnd vdd DFFSXLTS
xlfsr_out_reg__24__ clk n5 n4 lfsr_out<24> n38 gnd vdd DFFSXLTS
xlfsr_out_reg__0__ clk n1 lfsr_out<0> n28 n34 gnd vdd DFFSXLTS

xu5 lfsr_out<23> lfsr_out<16> n30 gnd vdd XNOR2X1TS
xu3 lfsr_out<27> n29 n1 gnd vdd XOR2X1TS
xu4 lfsr_out<0> n30 n29 gnd vdd XOR2X1TS

.ends lfsr1

