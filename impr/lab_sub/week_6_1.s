@This program can generate maximum 4 by 4 diognal matrix

.DATA
A: .WORD 1, 2, 1, 3
B: .WORD 1, 2, 1, 5
C: .WORD 1, 1, 3, 6
D: .WORD 2, 1, 1, 4

G: .WORD 0


.TEXT
ldr r0,=A
ldr r1,=B
ldr r2,=C
ldr r3,=D
ldr r6,=G

@for a 2by2 matrix
mov R5, #0
@ldr r4, [r0, #4]
add r0, r0, #4
ldr r5, [r6]
ldr r4, [r0]
ldr r4, [r0], #4
str r4, [r5]


