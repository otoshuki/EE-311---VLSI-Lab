Question 3 - PMOS transfer characteristics
*Guining Pertin - 170102027

.MODEL PMOS1 PMOS

M1 2 1 0 0 PMOS1
VDS 2 0 DC 0
VGS 1 0 DC 0

.control

dc VDS -10 0 .5 VGS -10 0 2
plot -VDS#branch ylabel 'Id' xlabel 'Vds'

.endc

.end
