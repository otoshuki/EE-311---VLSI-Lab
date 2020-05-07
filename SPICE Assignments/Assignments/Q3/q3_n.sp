Question 3 - NMOS transfer characteristics
*Guining Pertin - 170102027

*Using default NMOS parameters
.MODEL NMOS1 NMOS

M1 2 1 0 0 NMOS1
VDS 2 0 DC 0
VGS 1 0 DC 0

.control

dc VDS 0 10 .5 VGS 0 10 2
plot -VDS#branch ylabel 'Id(A)' xlabel 'Vds'

.endc

.end
