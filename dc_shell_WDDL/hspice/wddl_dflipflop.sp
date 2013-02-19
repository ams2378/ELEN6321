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

** Library name: STD_cell_symbol
** Cell name: INVXLTS
** View name: cmos_sch
.subckt INVXLTS a y
.ends INVXLTS
** End of subcircuit definition.

** Library name: STD_cell_symbol
** Cell name: INVX1TS
** View name: cmos_sch
.subckt INVX1TS a y
.ends INVX1TS
** End of subcircuit definition.

** Library name: STD_cell_symbol
** Cell name: DFFTRX2TS
** View name: cmos_sch
.subckt DFFTRX2TS ck d q qn rn
.ends DFFTRX2TS
** End of subcircuit definition.

** Library name: STD_cell_symbol
** Cell name: DFFQX1TS
** View name: cmos_sch
.subckt DFFQX1TS ck d q
.ends DFFQX1TS
** End of subcircuit definition.

** Library name: STD_cell_symbol
** Cell name: NOR2BX1TS
** View name: cmos_sch
.subckt NOR2BX1TS an b y
.ends NOR2BX1TS
** End of subcircuit definition.

** Library name: LFSR
** Cell name: wddl_dflipflop
** View name: schematic
xu5 d_i n6 INVXLTS
xu6 prechrg_i n8 INVXLTS
xu4 n6 n7 INVX1TS
xflop1__2fq_reg clk n7 q_o nett_29 n8 DFFTRX2TS
xflop2__2fq_reg clk d_bar_o qbar_o DFFQX1TS
xu3 n8 n7 d_bar_o NOR2BX1TS
.END
