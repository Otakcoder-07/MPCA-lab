.DATA
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
B: .word 10
.TEXT
ldr r0, =A
mov r8,#9  
mov r6,#0
add r0,r0,#4
loop:
	ldr r2, [r0,#8]!
	add r6, r2, r6
	add r1,r1,#4
	sub r8,r8,#2
	CMP r8,#0
	Bne loop  @ R6 has final value
    Beq store

store:
	ldr r9,=A
	str r6,[r9]