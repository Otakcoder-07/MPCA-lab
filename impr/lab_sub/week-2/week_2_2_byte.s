

.TEXT
LDR R0, =A
LDR R5, =B
@mov R1, #0
mov R2, #0
mov R3, #0
loop:
	LDRSB R1, [R0]
	add R0, R0, #1
	add R3, R3, R1
	add R2, R2, #1
	cmp R2, #6
BNE loop

.DATA
A: .byte 1,2,3,4,5,60
B: .Byte 0