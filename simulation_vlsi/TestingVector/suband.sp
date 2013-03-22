.subckt andgate a_i0 a_i1 a_i2 a_i3 b_i0 b_i1 b_i2 b_i3 out3 out2 out1 out0 vss vdd

X1AND2XLTS a_i0 b_i0 out0 VSS VDD AND2XLTS
X2AND2XLTS a_i1 b_i1 out1 VSS VDD AND2XLTS
X3AND2XLTS a_i2 b_i2 out2 VSS VDD AND2XLTS
X4AND2XLTS a_i3 b_i3 out3 VSS VDD AND2XLTS
.ends
