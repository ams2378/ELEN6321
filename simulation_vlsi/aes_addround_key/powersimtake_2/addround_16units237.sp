*include model and subckts
.lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
.include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
.include '/user2/spring13/asc2171/avlsi/project/ELEN6321/simulation_vlsi/lib/subckts.sp'
.vec 'log_16units237.vec'
.include 'aes_xor.sp'
.TEMP 25
*define options
 .options FAST
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=gear

x_s00_aesxor s00sa_i7 s00sa_i6 s00sa_i5 s00sa_i4 s00sa_i3 s00sa_i2 s00sa_i1 s00sa_i0 
+ s00sa_o7 s00sa_o6 s00sa_o5 s00sa_o4 s00sa_o3 s00sa_o2 s00sa_o1 s00sa_o0 
+ s00text_in7 s00text_in6 s00text_in5 s00text_in4 s00text_in3 s00text_in2 s00text_in1 s00text_in0 
+ s00w_i7 s00w_i6 s00w_i5 s00w_i4 s00w_i3 s00w_i2 s00w_i1 s00w_i0 
+ clk s00ld_r gnd vdd aes_xor 

x_s01_aesxor s01sa_i7 s01sa_i6 s01sa_i5 s01sa_i4 s01sa_i3 s01sa_i2 s01sa_i1 s01sa_i0 
+ s01sa_o7 s01sa_o6 s01sa_o5 s01sa_o4 s01sa_o3 s01sa_o2 s01sa_o1 s01sa_o0 
+ s01text_in7 s01text_in6 s01text_in5 s01text_in4 s01text_in3 s01text_in2 s01text_in1 s01text_in0 
+ s01w_i7 s01w_i6 s01w_i5 s01w_i4 s01w_i3 s01w_i2 s01w_i1 s01w_i0 
+ clk s01ld_r gnd vdd aes_xor 

x_s02_aesxor s02sa_i7 s02sa_i6 s02sa_i5 s02sa_i4 s02sa_i3 s02sa_i2 s02sa_i1 s02sa_i0 
+ s02sa_o7 s02sa_o6 s02sa_o5 s02sa_o4 s02sa_o3 s02sa_o2 s02sa_o1 s02sa_o0 
+ s02text_in7 s02text_in6 s02text_in5 s02text_in4 s02text_in3 s02text_in2 s02text_in1 s02text_in0 
+ s02w_i7 s02w_i6 s02w_i5 s02w_i4 s02w_i3 s02w_i2 s02w_i1 s02w_i0 
+ clk s02ld_r gnd vdd aes_xor 

x_s03_aesxor s03sa_i7 s03sa_i6 s03sa_i5 s03sa_i4 s03sa_i3 s03sa_i2 s03sa_i1 s03sa_i0 
+ s03sa_o7 s03sa_o6 s03sa_o5 s03sa_o4 s03sa_o3 s03sa_o2 s03sa_o1 s03sa_o0 
+ s03text_in7 s03text_in6 s03text_in5 s03text_in4 s03text_in3 s03text_in2 s03text_in1 s03text_in0 
+ s03w_i7 s03w_i6 s03w_i5 s03w_i4 s03w_i3 s03w_i2 s03w_i1 s03w_i0 
+ clk s03ld_r gnd vdd aes_xor 

x_s10_aesxor s10sa_i7 s10sa_i6 s10sa_i5 s10sa_i4 s10sa_i3 s10sa_i2 s10sa_i1 s10sa_i0 
+ s10sa_o7 s10sa_o6 s10sa_o5 s10sa_o4 s10sa_o3 s10sa_o2 s10sa_o1 s10sa_o0 
+ s10text_in7 s10text_in6 s10text_in5 s10text_in4 s10text_in3 s10text_in2 s10text_in1 s10text_in0 
+ s10w_i7 s10w_i6 s10w_i5 s10w_i4 s10w_i3 s10w_i2 s10w_i1 s10w_i0 
+ clk s10ld_r gnd vdd aes_xor 

x_s11_aesxor s11sa_i7 s11sa_i6 s11sa_i5 s11sa_i4 s11sa_i3 s11sa_i2 s11sa_i1 s11sa_i0 
+ s11sa_o7 s11sa_o6 s11sa_o5 s11sa_o4 s11sa_o3 s11sa_o2 s11sa_o1 s11sa_o0 
+ s11text_in7 s11text_in6 s11text_in5 s11text_in4 s11text_in3 s11text_in2 s11text_in1 s11text_in0 
+ s11w_i7 s11w_i6 s11w_i5 s11w_i4 s11w_i3 s11w_i2 s11w_i1 s11w_i0 
+ clk s11ld_r gnd vdd aes_xor 

x_s12_aesxor s12sa_i7 s12sa_i6 s12sa_i5 s12sa_i4 s12sa_i3 s12sa_i2 s12sa_i1 s12sa_i0 
+ s12sa_o7 s12sa_o6 s12sa_o5 s12sa_o4 s12sa_o3 s12sa_o2 s12sa_o1 s12sa_o0 
+ s12text_in7 s12text_in6 s12text_in5 s12text_in4 s12text_in3 s12text_in2 s12text_in1 s12text_in0 
+ s12w_i7 s12w_i6 s12w_i5 s12w_i4 s12w_i3 s12w_i2 s12w_i1 s12w_i0 
+ clk s12ld_r gnd vdd aes_xor 

x_s13_aesxor s13sa_i7 s13sa_i6 s13sa_i5 s13sa_i4 s13sa_i3 s13sa_i2 s13sa_i1 s13sa_i0 
+ s13sa_o7 s13sa_o6 s13sa_o5 s13sa_o4 s13sa_o3 s13sa_o2 s13sa_o1 s13sa_o0 
+ s13text_in7 s13text_in6 s13text_in5 s13text_in4 s13text_in3 s13text_in2 s13text_in1 s13text_in0 
+ s13w_i7 s13w_i6 s13w_i5 s13w_i4 s13w_i3 s13w_i2 s13w_i1 s13w_i0 
+ clk s13ld_r gnd vdd aes_xor 

x_s20_aesxor s20sa_i7 s20sa_i6 s20sa_i5 s20sa_i4 s20sa_i3 s20sa_i2 s20sa_i1 s20sa_i0 
+ s20sa_o7 s20sa_o6 s20sa_o5 s20sa_o4 s20sa_o3 s20sa_o2 s20sa_o1 s20sa_o0 
+ s20text_in7 s20text_in6 s20text_in5 s20text_in4 s20text_in3 s20text_in2 s20text_in1 s20text_in0 
+ s20w_i7 s20w_i6 s20w_i5 s20w_i4 s20w_i3 s20w_i2 s20w_i1 s20w_i0 
+ clk s20ld_r gnd vdd aes_xor 

x_s21_aesxor s21sa_i7 s21sa_i6 s21sa_i5 s21sa_i4 s21sa_i3 s21sa_i2 s21sa_i1 s21sa_i0 
+ s21sa_o7 s21sa_o6 s21sa_o5 s21sa_o4 s21sa_o3 s21sa_o2 s21sa_o1 s21sa_o0 
+ s21text_in7 s21text_in6 s21text_in5 s21text_in4 s21text_in3 s21text_in2 s21text_in1 s21text_in0 
+ s21w_i7 s21w_i6 s21w_i5 s21w_i4 s21w_i3 s21w_i2 s21w_i1 s21w_i0 
+ clk s21ld_r gnd vdd aes_xor 

x_s22_aesxor s22sa_i7 s22sa_i6 s22sa_i5 s22sa_i4 s22sa_i3 s22sa_i2 s22sa_i1 s22sa_i0 
+ s22sa_o7 s22sa_o6 s22sa_o5 s22sa_o4 s22sa_o3 s22sa_o2 s22sa_o1 s22sa_o0 
+ s22text_in7 s22text_in6 s22text_in5 s22text_in4 s22text_in3 s22text_in2 s22text_in1 s22text_in0 
+ s22w_i7 s22w_i6 s22w_i5 s22w_i4 s22w_i3 s22w_i2 s22w_i1 s22w_i0 
+ clk s22ld_r gnd vdd aes_xor 

x_s23_aesxor s23sa_i7 s23sa_i6 s23sa_i5 s23sa_i4 s23sa_i3 s23sa_i2 s23sa_i1 s23sa_i0 
+ s23sa_o7 s23sa_o6 s23sa_o5 s23sa_o4 s23sa_o3 s23sa_o2 s23sa_o1 s23sa_o0 
+ s23text_in7 s23text_in6 s23text_in5 s23text_in4 s23text_in3 s23text_in2 s23text_in1 s23text_in0 
+ s23w_i7 s23w_i6 s23w_i5 s23w_i4 s23w_i3 s23w_i2 s23w_i1 s23w_i0 
+ clk s23ld_r gnd vdd aes_xor 

x_s30_aesxor s30sa_i7 s30sa_i6 s30sa_i5 s30sa_i4 s30sa_i3 s30sa_i2 s30sa_i1 s30sa_i0 
+ s30sa_o7 s30sa_o6 s30sa_o5 s30sa_o4 s30sa_o3 s30sa_o2 s30sa_o1 s30sa_o0 
+ s30text_in7 s30text_in6 s30text_in5 s30text_in4 s30text_in3 s30text_in2 s30text_in1 s30text_in0 
+ s30w_i7 s30w_i6 s30w_i5 s30w_i4 s30w_i3 s30w_i2 s30w_i1 s30w_i0 
+ clk s30ld_r gnd vdd aes_xor 

x_s31_aesxor s31sa_i7 s31sa_i6 s31sa_i5 s31sa_i4 s31sa_i3 s31sa_i2 s31sa_i1 s31sa_i0 
+ s31sa_o7 s31sa_o6 s31sa_o5 s31sa_o4 s31sa_o3 s31sa_o2 s31sa_o1 s31sa_o0 
+ s31text_in7 s31text_in6 s31text_in5 s31text_in4 s31text_in3 s31text_in2 s31text_in1 s31text_in0 
+ s31w_i7 s31w_i6 s31w_i5 s31w_i4 s31w_i3 s31w_i2 s31w_i1 s31w_i0 
+ clk s31ld_r gnd vdd aes_xor 

x_s32_aesxor s32sa_i7 s32sa_i6 s32sa_i5 s32sa_i4 s32sa_i3 s32sa_i2 s32sa_i1 s32sa_i0 
+ s32sa_o7 s32sa_o6 s32sa_o5 s32sa_o4 s32sa_o3 s32sa_o2 s32sa_o1 s32sa_o0 
+ s32text_in7 s32text_in6 s32text_in5 s32text_in4 s32text_in3 s32text_in2 s32text_in1 s32text_in0 
+ s32w_i7 s32w_i6 s32w_i5 s32w_i4 s32w_i3 s32w_i2 s32w_i1 s32w_i0 
+ clk s32ld_r gnd vdd aes_xor 

x_s33_aesxor s33sa_i7 s33sa_i6 s33sa_i5 s33sa_i4 s33sa_i3 s33sa_i2 s33sa_i1 s33sa_i0 
+ s33sa_o7 s33sa_o6 s33sa_o5 s33sa_o4 s33sa_o3 s33sa_o2 s33sa_o1 s33sa_o0 
+ s33text_in7 s33text_in6 s33text_in5 s33text_in4 s33text_in3 s33text_in2 s33text_in1 s33text_in0 
+ s33w_i7 s33w_i6 s33w_i5 s33w_i4 s33w_i3 s33w_i2 s33w_i1 s33w_i0 
+ clk s33ld_r gnd vdd aes_xor 

*power and input signals

vgnd gnd 0 dc=0
vvdd vdd 0 dc=1.2

*define parameters
.param supply0=1.2
.param tr=.5n    ** rise time
.param tf=.5n    ** fall time
.param td= 10n     ** initial delay
.param perA=50n    ** period
.param pwA=' (perA-tr-tf)/2'  ** high pulse width
.param 
vclk clk gnd pulse (0 supply0 td tr tf pwA perA )


*measurements
.TRAN 1n 160n 
. MEASURE TRAN -1.2*i(vvdd) START=20n STOP=70n STEP=1n
.END
