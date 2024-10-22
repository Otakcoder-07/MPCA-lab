.text
ldr r0, = array
mov r1, #6

label:
ldr r2, [r0], #4; this also works implicit addition
add r3, r3, r2
sub r1, r1, #1; decrements r1 same as r1--
cmp r1, #0; whether r1 is 0
bne label ;if not equal go to label i.e loop back

.data
array: .word 2,4,2,6,56,8