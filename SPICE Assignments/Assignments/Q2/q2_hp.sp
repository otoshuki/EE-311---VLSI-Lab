Question 2 - HPF
*Guining Pertin - 170102027

*RC HPF with cutoff at ~1.6kHz
V1 1 0 DC 0 AC 1
C1 1 2 10n
R1 2 0 10k

.control

ac dec 100 1 100k
settype decibel 2
plot vdb(2) ylabel 'Voltage'

.endc

.end
