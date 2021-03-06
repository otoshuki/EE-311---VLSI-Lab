Question 9 - CMOS Differential Amplifier
*Guining Pertin - 170102027

*Default parameters
.MODEL PMOS1 PMOS
.MODEL NMOS1 NMOS

VD VDD GND DC 10
I1 G0 GND DC 2
V1 VIN1 VIN2 DC 3 AC 0 SIN(0 30m 60 0 0)
M0 G0 G0 GND GND NMOS1
M1 D1 G0 GND GND NMOS1
M2 D2 VIN1 D1 D1 NMOS1
M3 D3 VIN2 D1 D1 NMOS1
M4 D2 D2 VDD VDD PMOS1
M5 D3 G5 VDD VDD PMOS1
M6 D6 D2 VDD VDD PMOS1
M7 D6 D6 GND GND NMOS1
M8 G5 D6 GND GND NMOS1
M9 G5 G5 VDD VDD PMOS1
M10 VOUT D3 VDD VDD PMOS1
M11 VOUT G0 GND GND NMOS1

.control

tran 10m 8
plot VOUT

.endc

.end
