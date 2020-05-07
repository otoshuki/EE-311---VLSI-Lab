Question 1 - Bridge Rectifier Circuit
*Guining Pertin - 170102027

*IN4004 model
.MODEL D1N4004 D (IS=18.8n RS=0 BV=400
+ IBV=5.00u CJO=30p M=0.333 N=2 TT=0)

V1 1 0 DC 0 AC 1 SIN(0 15 60 0 0)
D1 1 2 D1N4004
D2 0 2 D1N4004
D3 3 1 D1N4004
D4 3 0 D1N4004
R1 2 3 10k

.control

*Solution for a
op
print v(0) v(1) v(2) v(3)

*Solution for b
tran 1u 50m
plot v(1) v(2, 3) ylabel 'voltage'

.endc

.end
