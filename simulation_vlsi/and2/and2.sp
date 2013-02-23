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
X1AND2XLTS a_i abar_i out VSS VDD AND2XLTS

*power and input signals
va_i a_i 0 PULSE(0 1.2 0 100n 100n 2u 4u)
vabar_i abar_i 0 PULSE(1.2 0 0 100n 10n 2u 4u)
vvss VSS 0 dc=0
vvdd VDD 0 dc=1.2

*measurements
.TRAN 100n 10u
.MEASURE avg_pow AVG power FROM=1u TO=10u
.END
