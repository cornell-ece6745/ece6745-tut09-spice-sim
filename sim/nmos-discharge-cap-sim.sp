* MMOS Discharging Capacitor
* ========================================================================

* Parameters and Models
* ------------------------------------------------------------------------

.param VDD='1.1V'
.temp  25
.inc   "/classes/ece6745/install/adks/freepdk-45nm/stdview/pdk-models.sp"

* Supply Voltage Source
* ------------------------------------------------------------------------

Vdd vdd gnd VDD

* Transistors
* ------------------------------------------------------------------------

*  src  gate drain body type
M1 gnd  in   out   gnd  NMOS_VTL W=0.450um L=0.045um

* Output Load
* ------------------------------------------------------------------------

Cload out gnd 7fF

* Input Signals
* ------------------------------------------------------------------------

Vin in gnd pwl( 0ns 0V 0.5ns 0V 0.7ns VDD )

* Analysis
* ------------------------------------------------------------------------

.ic   V(out)=VDD
.tran 0.01ns 2.5ns

.control
run
set color0=white
set color1=black
set xbrushwidth=2
plot V(in) V(out)
.endc

.end
