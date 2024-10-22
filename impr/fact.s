.TEXT

mov r3, r0
mov r1, #4
mov r4, r0
mov r5,#1
beq loop
swi 0x11
loop:
    mul r6,r5,r1
    sub r1,r1,#1
    mov r5,r6 
    cmp r1, r4
    bne loop
swi 0x11
     




