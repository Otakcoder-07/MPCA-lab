.DATA
A: .word 8


.TEXT
mov r1, #1
mov r2, #1
mov r3, #2
mov r4, #1
mov r6, #0 @Holds the final answer
ldr r7, =A
mov r8, #1
str r8, [r7], #4
str r8, [r7], #4

loop:	
	
	add r6, r4, r2
	mov r2, r4
	mov r4, r6
	add r3, r3, #1  @counter
	str r6, [r7], #4 
	cmp r3, #8  @ Gives nth fibanocci number(greater than or equal to 3) when adjusted
Bne loop
swi 0x11