.text
ldr r0, = arr
mov r1, #10
mov r2, #0
mov r3, #5

startLabel:
add r4, r2, r3 ;mid = l + r
mov r7, r4, lsr #1; mid /= 2
add r8, r0, r7, lsl #2
ldr r5, [r8]
cmp r5, r1
subgt r7, r7, #1
addlt r7, r7, #1
mov r3, r7;if r5 is greater then r = mid - 1
cmp r5, r1
bne startLabel


.data
arr: .word 10,20,30,40,50,60