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


xu7 prechrg_i n5 nand_o gnd vdd NOR2XLTS
xu9 b_i n6 and_o gnd vdd AND2XLTS
xu8 a_i b_i n5 gnd vdd AND2XLTS
xu10 a_i prechrg_i n6 gnd vdd NOR2BX1TS
.END
