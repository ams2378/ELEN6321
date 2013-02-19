** Generated for: hspiceD
** Generated on: Feb 18 17:57:41 2013
** Design library name: LFSR
** Design cell name: wddland
** Design view name: schematic


.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

** Library name: STD_cell_symbol
** Cell name: NOR2XLTS
** View name: cmos_sch
.subckt NOR2XLTS a b y
.ends NOR2XLTS
** End of subcircuit definition.

** Library name: STD_cell_symbol
** Cell name: AND2XLTS
** View name: cmos_sch
.subckt AND2XLTS a b y
.ends AND2XLTS
** End of subcircuit definition.

** Library name: STD_cell_symbol
** Cell name: NOR2BX1TS
** View name: cmos_sch
.subckt NOR2BX1TS an b y
.ends NOR2BX1TS
** End of subcircuit definition.

** Library name: LFSR
** Cell name: wddland
** View name: schematic
xu7 prechrg_i n5 nand_o NOR2XLTS
xu9 b_i n6 and_o AND2XLTS
xu8 a_i b_i n5 AND2XLTS
xu10 a_i prechrg_i n6 NOR2BX1TS
.END
