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
.param SD=10p

*circuit instantiation
x1INVXLTS n9 b_i gnd vdd INVXLTS
x2INVXLTS n10 n9 gnd vdd INVXLTS
x3INVXLTS n11 prechrg_i gnd vdd INVXLTS
x4INVXLTS n12 n11 gnd vdd INVXLTS
x5INVXLTS n13 a_i gnd vdd INVXLTS
x6INVXLTS n14 n13 gnd vdd INVXLTS
x7NOR2XLTS nor_o n14 n16 gnd vdd NOR2XLTS
x8OR2XLTS n12 n10 n16 gnd vdd OR2XLTS
x9NOR2XLTS or_o n12 n15 gnd vdd NOR2XLTS
x10NOR2XLTS n15 n14 n10 gnd vdd NOR2XLTS


*power and input signals
va_i a_i 0 PULSE(0.01 supply0 0 SD SD 1.9u 4u)
vb_i b_i 0 PULSE(0.01 supply0 0 SD SD 1u 2u)
vprechrg_i  prechrg_i 0 PULSE(0.01 supply0 0 SD SD 1u 2u)
vvss vss 0 dc=0
vvdd vdd 0 dc=supply0

*measurements
.tran 5u 10u
.plot I(vvdd)
.MEASURE tran avg_crt AVG I(vvdd)
.plot wddlcurrent
.ln(element)
.end
