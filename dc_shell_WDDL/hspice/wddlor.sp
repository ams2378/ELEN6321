** Generated for: hspiceD
** Generated on: Feb 18 20:54:45 2013
** Design library name: LFSR
** Design cell name: wddlor
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
** Cell name: NOR2XLTS
** View name: cmos_sch
.subckt NOR2XLTS a b y
.ends NOR2XLTS
** End of subcircuit definition.

** Library name: STD_cell_symbol
** Cell name: OR2XLTS
** View name: cmos_sch
.subckt OR2XLTS a b y
.ends OR2XLTS
** End of subcircuit definition.

** Library name: LFSR
** Cell name: wddlor
** View name: schematic
xu12 n13 n14 INVXLTS
xu11 a_i n13 INVXLTS
xu10 n11 n12 INVXLTS
xu9 prechrg_i n11 INVXLTS
xu8 n9 n10 INVXLTS
xu7 b_i n9 INVXLTS
xu16 n14 n10 n15 NOR2XLTS
xu15 n12 n15 or_o NOR2XLTS
xu13 n14 n16 nor_o NOR2XLTS
xu14 n12 n10 n16 OR2XLTS
.END
