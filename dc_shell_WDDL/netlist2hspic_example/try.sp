
*include model and subckts
 .lib '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/allModels.inc' tt
 .include '/tools2/courses/ee6321/share/IBM_PDK/cmrf8sf/relDM/HSPICE/models/design.inc'
* .include 'lib.sp'
 .include 'lfsr1.sp'

.TEMP 25
*define options
 .option post=1
 .option accurate=1
 .option gmin=1e-15
 .option gmindc=1.0e-15
 .option method=gear

*define parameters
 .param supply0=1.2
 .param SD=100p

*circuit instantiation
* Xfo4 din dout gnd gnds vdd vdds fo4chain_20
.LFSRL clk resetn out gnd vdd lfsr1

*power sources
 vvdd   vdd   gnd dc=supply0
 vgnd   gnd   0   dc=0
 VC     clk   gnd pwl 0n 0.0, 4n 0.0, 4.05n 5.0, 8.0n 5.0, 8.05n 0.0
 vdin   reset gnd pwl 0 0 '5*SD' 0 '6*SD' supply0

*measurements
 .tran '0.01*SD' '50*SD' 
 .measure start when V(din)='0.5*supply0' rise=1 TD='2*SD'
 .measure end when V(dout)='0.5*supply0' rise=1 TD='2*SD'
 .measure fo4delay param='(end-start)/20'
 .measure eop integ PAR('-supply0*I(vvdd)') from start to end

*end of simulation 
.end
