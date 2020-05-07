Question 5 - 3-Input CMOS NOR Gate
*Guining Pertin - 170102027

*Default parameters
.MODEL PMOS1 PMOS
.MODEL NMOS1 NMOS

V1 VDD GND DC 5
M1 1 A VDD VDD PMOS1
M2 2 B 1 1 PMOS1
M3 OUT C 2 2 PMOS1
M4 OUT A GND GND NMOS1
M5 OUT B GND GND NMOS1
M6 OUT C GND GND NMOS1
C1 OUT GND 0.1u

*Pulse inputs for each ABC combination
VA A GND DC 0 AC 0 PULSE(0 5 3.8 0.2 0.2 3.8 8)
VB B GND DC 0 AC 0 PULSE(0 5 1.8 0.2 0.2 1.8 4)
VC C GND DC 0 AC 0 PULSE(0 5 0.8 0.2 0.2 0.8 2)

.control

tran 10m 8
plot C OUT ylabel 'LSB/Output'

.endc

.end
