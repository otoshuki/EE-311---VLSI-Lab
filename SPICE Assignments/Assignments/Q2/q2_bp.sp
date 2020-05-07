Question 2 - BPF
*Guining Pertin - 170102027

*RC LPF with passband at ~160Hz - ~160kHz
V1 1 0 DC 0 AC 1
R1 1 2 1k
C1 2 0 10n
C2 2 3 10n
R2 3 0 100k

.control

ac dec 100 1 1meg
settype decibel 3
plot vdb(3) ylabel 'Voltage'

.endc

.end
