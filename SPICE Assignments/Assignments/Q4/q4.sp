Question 4 - CMOS Inverter
*Guining Pertin - 170102027

*Default parameters
.MODEL PMOS1 PMOS
.MODEL NMOS1 NMOS

V1 VDD GND DC 5
VIN IN GND DC 0 AC 0 PULSE(0 5 1 0.2 0.2 1 4)
M1 OUT IN GND GND NMOS1
M2 OUT IN VDD VDD PMOS1
*CL OUT GND 0.1u

*Pulse input - delay-width=1s, rise-fall=0.5s

.control

tran 10m 4

*Measure Fall and Rise Time
meas tran tf trig OUT val=4.5 fall=1 targ OUT val=0.5 fall=1
meas tran tr trig OUT val=0.5 rise=1 targ OUT val=4.5 rise=1


*Measure Propagation Delay with and without CL
meas tran tphl trig IN val=2.5 rise=1 targ OUT val=2.5 fall=1
meas tran tplh trig IN val=2.5 fall=1 targ OUT val=2.5 rise=1

plot OUT IN ylabel 'Input/Output'

dc VIN 0 5 0.05

*Measure Noise Margin
*Measure function not working

plot OUT ylabel 'Vout'

.endc

.end
