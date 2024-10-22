.TEXT
mov r1,#3
mov r2,#5
mov r3,#6
AND r4,r1,r2@ This is AND
ORR  r5,r1,r2 @This is OR
EOR  r5,r1,r2   @This is XOR
BIC r6,r1,r2 @This is ANDNOT
swi 0x11
