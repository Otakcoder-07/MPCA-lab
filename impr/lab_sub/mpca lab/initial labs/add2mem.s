.text
ldr r0, =num1; loads address of num1 into r0
ldr r1, = num2; loads address of num2 into r1
ldr r5 ,= num3
ldr r2, [r0]; value addressed at r0
ldr r3, [r1]
add r4, r2, r3;
str r4, [r5]; store from register to memory
swi 0x11

.data
num1: .word 12
num2: .word 34
num3: .word 0