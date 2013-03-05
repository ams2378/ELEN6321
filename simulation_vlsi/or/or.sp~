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
x1OR2XLTS a_i b_i out gnd vdd OR2XLTS

*define parameters
 .param SD=10p
 .param supply0=1.2

*power and input signals
va_i a_i 0 PULSE(0.01 1.2 0 100n 100n 1.9u 4u)
vb_i b_i 0 PULSE(0.01 1.2 0 100n 100n 1u 2u)
vgnd gnd 0 dc=0
vorvdd vdd 0 dc=supply0

*measurements
.TRAN 300n 10u
.PLOT TRAN P(vorvdd) 
.end


