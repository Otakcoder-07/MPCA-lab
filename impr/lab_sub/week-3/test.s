.TEXT
LDR R0,=A
LDR R5, =B

mov R2, #0
mov R3, #0
mov R6, #0

loop:
	LDR R1, [R0,R6]!
	mov R6, #4
	add R3, R3, R1
	add R2, R2, #1
	cmp R2, #8
	 
BNE loop

STR R3, [R5]

.DATA
A: .WORD 1,2,3,4,5,6,8,9
B: .WORD 0
