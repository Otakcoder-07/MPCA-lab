MOV r0,#8
@MOV r0,#-6
@MOV r0,#0
CMP r0, #0
Beq zero
Bgt positive
MOV r1, #3
B Exit

zero:
MOV r1, #1
B Exit

positive:
MOV r1, #2
B Exit

Exit:
swi 0x11
