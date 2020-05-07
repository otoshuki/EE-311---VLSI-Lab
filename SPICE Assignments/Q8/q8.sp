Question 8 - NMOS Amplifier
*Guining Pertin - 170102027

*Default parameters
.MODEL NMOS1 NMOS

V1 VDD GND DC 5
V2 VIN GND DC 0 AC 0 SIN(0 20m 60k 0 0)

M1 DR GT SR SR NMOS1
RD VDD DR 40k
RSS SR GND 150
C1 VIN GT 0.1u
C2 DR GND 1p

*Voltage Divider Biasing
RB1 VDD GT 1k
RB2 GT GND 1k

.control

tran 10n 100u
plot DR
meas tran vmax max DR
meas tran vmin min DR
print vmax-vmin

.endc

.end
