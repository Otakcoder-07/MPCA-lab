@Write a program to check if r0 value is not equal to 5 then r1=r1+r0-r2
mov r0,#5
mov r1,#45
mov r2,#6
mov r3,#5
cmp r0,r3
ADDEQ r1,r1,r0
subne r1,r1,r2
@beq program
@program:
@    add r1,r1,r0
@    sub r1,r1,r2
swi 0x11