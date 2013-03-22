*include model and subckts
.lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
.include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
.include '/user2/spring13/asc2171/avlsi/project/ELEN6321/simulation_vlsi/lib/subckts.sp'
.vec 'inputvector_round1.vec'
.include 'aes_xor.sp'
.TEMP 25
*define options
 .options FAST
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=gear
 *.option TIMERES=.1ns

*circuit instantiation
*1
x_s00_aesxor s00sa_i7 s00sa_i6 s00sa_i5 s00sa_i4 s00sa_i3 s00sa_i2 s00sa_i1 s00sa_i0 
+ s00sa_o7 s00sa_o6 s00sa_o5 s00sa_o4 s00sa_o3 s00sa_o2 s00sa_o1 s00sa_o0 
+ s00text_in7 s00text_in6 s00text_in5 s00text_in4 s00text_in3 text_in2 s00text_in1 s00text_in0 
+ s00w_i7 s00w_i6 s00w_i5 s00w_i4 s00w_i3 s00w_i2 s00w_i1 s00w_i0
+ clk s00ld_r gnd vdd aes_xor 


*power and input signals

vgnd gnd 0 dc=0
vvdd vdd 0 dc=1.2

*define parameters
.param supply0=1.2
.param tr=.5n    ** rise time
.param tf=.5n    ** fall time
.param td= 0n     ** initial delay
.param perA=50n    ** period
.param pwA=' (perA-tr-tf)/2'  ** high pulse width
.param 
vclk clk gnd pulse (0 supply0 td tr tf pwA perA )


*measurements
.TRAN 1n 250n 
. MEASURE TRAN -1.2*i(vvdd) START=20n STOP=70n STEP=1n
.END
