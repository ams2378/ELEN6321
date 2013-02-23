** Generated for: hspiceD
** Generated on: Feb 18 20:50:40 2013
** Design library name: LFSR
** Design cell name: wddl_dflipflop
** Design view name: schematic


.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2


xu5 d_i n6 gnd vdd INVXLTS
xu6 prechrg_i n8 gnd vdd INVXLTS
xu4 n6 n7 gnd vdd INVX1TS
xflop1__2fq_reg clk n7 q_o nett_29 n8 gnd vdd DFFTRX2TS
xflop2__2fq_reg clk d_bar_o qbar_o gnd vdd DFFQX1TS
xu3 n8 n7 d_bar_o gnd vdd NOR2BX1TS
.END
