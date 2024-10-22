.TEXT
@store 1 in r1 if r0 is 0 2 in r1 if r0 is positive 3 in r0 is negative
mov r0,#10
mov r2,#0
cmp r0,r2
blt prog
beq prag
bne ps
prog:
    mov r1,#3
    swi 0x11
prag:
    mov r1,#1
    swi 0x11
ps:
    mov r1,#2
    swi 0x11