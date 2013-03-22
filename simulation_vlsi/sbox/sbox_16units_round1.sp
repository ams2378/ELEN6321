*include model and subckts
.lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
.include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
.include '/user2/spring13/asc2171/avlsi/project/ELEN6321/simulation_vlsi/lib/subckts.sp'
.vec 'inputvector_round1.vec'
.include 'unit_aes_sbox.sp'
.TEMP 25
*define options
 .options FAST
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=trap
  .option TIMERES=1ns

*circuit instantiation
x_s00_sbox s00_a0 s00_a1 s00_a2 s00_a3 s00_a4 s00_a5 s00_a6 s00_a7 s00_d0 s00_d1 s00_d2 s00_d3 s00_d4 s00_d5 s00_d6 s00_d7 gnd vdd sbox
*x_s01_sbox s01_a0 s01_a1 s01_a2 s01_a3 s01_a4 s01_a5 s01_a6 s01_a7 s01_d0 s01_d1 s01_d2 s01_d3 s01_d4 s01_d5 s01_d6 s01_d7 gnd vdd sbox
*x_s02_sbox s02_a0 s02_a1 s02_a2 s02_a3 s02_a4 s02_a5 s02_a6 s02_a7 s02_d0 s02_d1 s02_d2 s02_d3 s02_d4 s02_d5 s02_d6 s02_d7 gnd vdd sbox
*x_s03_sbox s03_a0 s03_a1 s03_a2 s03_a3 s03_a4 s03_a5 s03_a6 s03_a7 s03_d0 s03_d1 s03_d2 s03_d3 s03_d4 s03_d5 s03_d6 s03_d7 gnd vdd sbox

*x_s10_sbox s10_a0 s10_a1 s10_a2 s10_a3 s10_a4 s10_a5 s10_a6 s10_a7 s10_d0 s10_d1 s10_d2 s10_d3 s10_d4 s10_d5 s10_d6 s10_d7 gnd vdd sbox
*x_s11_sbox s11_a0 s11_a1 s11_a2 s11_a3 s11_a4 s11_a5 s11_a6 s11_a7 s11_d0 s11_d1 s11_d2 s11_d3 s11_d4 s11_d5 s11_d6 s11_d7 gnd vdd sbox
*x_s12_sbox s12_a0 s12_a1 s12_a2 s12_a3 s12_a4 s12_a5 s12_a6 s12_a7 s12_d0 s12_d1 s12_d2 s12_d3 s12_d4 s12_d5 s12_d6 s12_d7 gnd vdd sbox
*x_s13_sbox s13_a0 s13_a1 s13_a2 s13_a3 s13_a4 s13_a5 s13_a6 s13_a7 s13_d0 s13_d1 s13_d2 s13_d3 s13_d4 s13_d5 s13_d6 s13_d7 gnd vdd sbox


*x_s20_sbox s21_a0 s21_a1 s21_a2 s21_a3 s21_a4 s21_a5 s21_a6 s21_a7 s21_d0 s21_d1 s21_d2 s21_d3 s21_d4 s21_d5 s21_d6 s21_d7 gnd vdd sbox
*x_s21_sbox s21_a0 s21_a1 s21_a2 s21_a3 s21_a4 s21_a5 s21_a6 s21_a7 s21_d0 s21_d1 s21_d2 s21_d3 s21_d4 s21_d5 s21_d6 s21_d7 gnd vdd sbox
*x_s22_sbox s22_a0 s22_a1 s22_a2 s22_a3 s22_a4 s22_a5 s22_a6 s22_a7 s22_d0 s22_d1 s22_d2 s22_d3 s22_d4 s22_d5 s22_d6 s22_d7 gnd vdd sbox
*x_s23_sbox s23_a0 s23_a1 s23_a2 s23_a3 s23_a4 s23_a5 s23_a6 s23_a7 s23_d0 s23_d1 s23_d2 s23_d3 s23_d4 s23_d5 s23_d6 s23_d7 gnd vdd sbox

*x_s30_sbox s30_a0 s30_a1 s30_a2 s30_a3 s30_a4 s30_a5 s30_a6 s30_a7 s30_d0 s30_d1 s30_d2 s30_d3 s30_d4 s30_d5 s30_d6 s30_d7 gnd vdd sbox
*x_s31_sbox s31_a0 s31_a1 s31_a2 s31_a3 s31_a4 s31_a5 s31_a6 s31_a7 s31_d0 s31_d1 s31_d2 s31_d3 s31_d4 s31_d5 s31_d6 s31_d7 gnd vdd sbox
*x_s32_sbox s32_a0 s32_a1 s32_a2 s32_a3 s32_a4 s32_a5 s32_a6 s32_a7 s32_d0 s32_d1 s32_d2 s32_d3 s32_d4 s32_d5 s32_d6 s32_d7 gnd vdd sbox
*x_s33_sbox s33_a0 s33_a1 s33_a2 s33_a3 s33_a4 s33_a5 s33_a6 s33_a7 s33_d0 s33_d1 s33_d2 s33_d3 s33_d4 s33_d5 s33_d6 s33_d7 gnd vdd sbox
*power and input signals

vgnd gnd 0 dc=0
vvdd vdd 0 dc=1.2

*measurements
.TRAN 1n 10u 
. MEASURE -1*i(vvdd) START=100n STOP=5u STEP=100n
.END
