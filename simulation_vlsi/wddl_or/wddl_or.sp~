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

*define parameters
.param supply0=1.2
.param SD=100n

*circuit instantiation
X1AND2XLTS na_i nb_i out gnd vdd AND2XLTS
x1OR2XLTS a_i b_i nout gnd vdd OR2XLTS
x1INVXLTS na_i a_i gnd vdd INVXLTS
x2INVXLTS nb_i b_i gnd vdd INVXLTS


*power and input signals
va_i a_i 0 PULSE(0.01 supply0 0 SD SD 1.9u 4u)
vb_i b_i 0 PULSE(0.01 supply0 0 SD SD 1u 2u)
vvss vss 0 dc=0
vvdd vdd 0 dc=supply0

*measurements
.tran 5u 10u
.plot I(vvdd)
.MEASURE tran avg_crt AVG I(vvdd)
.plot wddlcurrent
.ln(element)
.end
