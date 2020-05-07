Question 5 - 3-Input CMOS NAND Gate
*Guining Pertin - 170102027

*Default parameters
.MODEL PMOS1 PMOS
.MODEL NMOS1 NMOS

V1 VDD GND DC 5
M1 OUT A 1 1 NMOS1
M2 1 B 2 2 NMOS1
M3 2 C GND GND NMOS1
M4 OUT A VDD VDD PMOS1
M5 OUT B VDD VDD PMOS1
M6 OUT C VDD VDD PMOS1
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
