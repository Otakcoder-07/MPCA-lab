.TEXT
@If r0=r1 add r0+r1 else r0-r2
mov r0,#10
mov r1,#10
cmp r1,r0
beq prog
sub r2,r0,r1
swi 0x11

prog:
    add r2,r0,r1
    swi 0x11





