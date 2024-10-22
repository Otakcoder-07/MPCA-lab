.DATA
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
B: .word 10
.TEXT
ldr r0, =A
ldr r8, =B
ldr r8,[r8,#0]
mov r1, #4   
mov r6,#0
loop:
	ldr r2, [r0, r1]
	add r6, r2, r6
	add r1,r1,#8
	sub r8,r8,#2
	CMP r8,#0
	BNE loop   @R6 has final value
	beq store
store:
	ldr r0,=A
	str r6,[r0]
	swi 0x11