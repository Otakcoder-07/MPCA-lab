@Write a program to add n  numbers and store the result in a register
mov r0,#10
mov r1,#10
mov r2,#5
mov r3,#6
add r4,r0,r1
add r5,r2,r3
add r6,r4,r5
@cmp r5,r6cmp sets off the flagnegative1 
cmp r6,r5 @sets the carry to 1
swi 0x11


