*include model and subckts
.lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
.include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
.include '/user2/spring13/asc2171/avlsi/project/ELEN6321/simulation_vlsi/lib/subckts.sp'
.vec 'input.vec'
.include 'suband.sp'
.TEMP 25
*define options
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=gear

*circuit instantiation
x1andgate a_i0 a_i1 a_i2 a_i3 b_i0 b_i1 b_i2 b_i3 out3 out2 out1 out0 vss vdd andgate

*power and input signals

vvss VSS 0 dc=0
vandvdd VDD 0 dc=1.2
.dout out
*measurements
.TRAN 300n 10u
.END
