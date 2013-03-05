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
x1INVXLTS out a_i gnd vdd INVXLTS

*power and input signals
va_i a_i 0 PULSE(0.01 1.2 0 100n 100n 1.9u 4u)
vvdd VDD 0 dc=1.2

*measurements
.TRAN 300n 10u
.MEASURE avg_pow AVG power FROM=1u TO=10u
.END


