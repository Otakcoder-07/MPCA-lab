MOV r0,#5
MOV r1,#5
CMP r0, r1
Beq Add
SUB r0, r0, r1
B Exit

Add:
ADD r0, r0, r1
B Exit

Exit:
swi 0x11
