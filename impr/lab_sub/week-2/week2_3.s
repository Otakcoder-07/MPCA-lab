MOV R0, #0
MOV R1, #1
MOV R2, #8 @number of elements 
LDR R3,=A
loop: 
	ADD R0, R0, R1
	ADD R1, R1, #1
	CMP R1,R2
	bne loop
	beq store
store:
STR r0,[R3]
swi 0x11

.data
A:	.word 0