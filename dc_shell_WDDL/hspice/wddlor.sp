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


xu12 n13 n14 gnd vdd INVXLTS
xu11 a_i n13 gnd vdd INVXLTS
xu10 n11 n12 gnd vdd INVXLTS
xu9 prechrg_i n11 gnd vdd INVXLTS
xu8 n9 n10 gnd vdd INVXLTS
xu7 b_i n9 gnd vdd INVXLTS
xu16 n14 n10 n15 gnd vdd NOR2XLTS
xu15 n12 n15 or_o gnd vdd NOR2XLTS
xu13 n14 n16 nor_o gnd vdd NOR2XLTS
xu14 n12 n10 n16 gnd vdd OR2XLTS
.END
