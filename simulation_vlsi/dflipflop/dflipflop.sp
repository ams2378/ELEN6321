*include model and subckts
.lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
.include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
.include '/user4/spring13/jy2525/lib/subckts.sp'


.TEMP 25
*define options
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=gear

*circuit instantiation
x1DFFTRX2TS clk d q nett_0 reset gnd vdd DFFTRX2TS

*power and input signals
vclk clk 0 PULSE(0.01 1.2 0 100n 100n 1u 2u)
vd d 0 PULSE(0.01 1.2 0 100n 100n 2u 4u)
vreset reset 0 dc=1.2   
vgnd gnd 0 dc=0
vffvdd vdd 0 dc=1.2

*measurements
.TRAN 300n 10u
.PLOT TRAN P(vffvdd)
.end
