*include model and subckts
.lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
.include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
.include '/user2/spring13/asc2171/avlsi/project/ELEN6321/simulation_vlsi/lib/subckts.sp'
.vec 'inputvector_round1.vec'
.include 'unit_aes_sbox.sp'
.TEMP 25
*define options
 *.options FAST
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=trap
  .option TIMERES=1ns

*circuit instantiation
x_s00_sbox s00_a0 s00_a1 s00_a2 s00_a3 s00_a4 s00_a5 s00_a6 s00_a7 s00_d0 s00_d1 s00_d2 s00_d3 s00_d4 s00_d5 s00_d6 s00_d7 gnd vdd sbox

*power and input signals

vgnd gnd 0 dc=0
vvdd vdd 0 dc=1.2

*measurements
.TRAN 1n 100n 
. MEASURE -1*i(vvdd) START=100n STOP=5u STEP=100n
.END
