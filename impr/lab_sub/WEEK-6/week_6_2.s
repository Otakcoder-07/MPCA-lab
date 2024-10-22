.DATA
A: .WORD -1, -2, 3, -4, 5, 6, -7, -8

.TEXT
ldr r0, =A
mov r4, #0
mov r3, #0 
loop:
    ldr r2, [r0], #4
    cmp r2, #0
    bgt SUMPOSITIVE
    add r4, r4, #1
    cmp r4, #8
    B loop
    

SUMPOSITIVE:
	
	add r3, r3, r2@ r3 has final value
    add r4, r4, #1
    cmp r4, #8
    blt loop