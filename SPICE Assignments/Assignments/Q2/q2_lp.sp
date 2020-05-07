Question 2 - LPF
*Guining Pertin - 170102027

*RC LPF with cutoff at ~1.6kHz
V1 1 0 DC 0 AC 1
R1 1 2 10k
C1 2 0 10n

.control

ac dec 100 1 100k
settype decibel 2
plot vdb(2) ylabel 'Voltage'

.endc

.end
