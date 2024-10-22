.DATA
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
B: .word 10
.TEXT
ldr r0, =A
mov r8, #10
ldr r2,[r0] 
mov r6,#0
add r6,r2,r6
loop:
	ldr r2, [r0],#4
	add r6, r2, r6
    add r0,r0,#4
	sub r8,r8,#1
	CMP r8,#1
	Bne loop
    Beq store  @ R6 has final value
store:
	ldr r9,=A
	str r6,[r9]