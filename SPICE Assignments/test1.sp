Dual RC Ladder
R1 INT IN 10k
V1 IN 0 DC 10 AC 5 PULSE(0 5 1u 1u 1u 1 1)
R2 OUT INT 1k
C1 INT 0 1u
C2 OUT 0 100n

.control
ac dec 10 1 100k
settype decibel out
plot vdb(out) xlimit 1 100k ylabel 'small signal gain'
.endc

.end
