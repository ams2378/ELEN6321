*include model and subckts
.lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
.include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
.include '/user2/spring13/asc2171/avlsi/project/ELEN6321/simulation_vlsi/lib/subckts.sp'

.TEMP 25
*define options
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=gear

*circuit instantiation

x1INVXLTS n1 d0_p_in gnd vdd INVXLTS
x2INVXLTS n2 n1 gnd vdd INVXLTS
x3INVXLTS n3 d1_p_in gnd vdd INVXLTS
x4INVXLTS n4 n3 gnd vdd INVXLTS
x5XOR2X1TS d_p_out n4 n2 gnd vdd XOR2X1TS



*power and input signals
va_i d0_p_in 0 PULSE(0.01 1.2 0 100n 100n 1.9u 4u)
vb_i d1_p_in 0 PULSE(0.01 1.2 0 100n 100n 1u 2u)
vvss gnd 0 dc=0
vxorvdd vdd 0 dc=1.2

*measurements
.TRAN 300n 10u
*.MEASURE avg_pow AVG power FROM=1u TO=10u
*.MEASURE tran -1.2*i(vxorvdd)
.PLOT TRAN P(vxorvdd) 
.END
