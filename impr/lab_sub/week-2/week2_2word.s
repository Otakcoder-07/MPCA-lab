

.TEXT
LDR R0,=A
LDR R5, =B
@mov R1, #0
mov R2, #0
mov R3, #0
loop:
	LDR R1, [R0]
	add R0, R0, #4
	add R3, R3, R1
	add R2, R2, #1
	cmp R2, #8
Bne loop

.DATA
A: .WORD 1,2,3,4,5,60,7,800
B: .WORD 0