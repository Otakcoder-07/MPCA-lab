.data
i1: .word 1, 3, 5, 9
i2: .word 6, 7, 8, 2
i3: .word 9, 1, 11, 4
i4: .word 12, 13, 14, 15

r1: .word 0, 0, 0, 0
r2: .word 0, 0, 0, 0
r3: .word 0, 0, 0, 0
r4: .word 0, 0, 0, 0
m: .word 4

.text

ldr r0, =i1
ldr r6, =r1
ldr r2, =m
ldr r2, [r2]
add r5, r2, #1
mov r3, #0
mov r4, #0
mov r9,#4

loop:
    ldr r8, [r0,r4]
    str r8, [r6,r4]
    add r3,r3,#1
    mul r4, r5, r3
    mov r8,r4
    mul r4, r8, r9
    cmp r3,r2
    bne loop