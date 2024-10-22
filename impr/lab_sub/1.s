@Write a program in ARM7TDMi to multiply 30 X Number using barrel shifter
A: .WORD 20
B: .WORD 0

LDR R1, =A
LDR R2, [R1]
LDR R4, =B

RSB R3,R2,R2,LSL #5
SUB R3,R3,R2
STR R3,[R4]

SWI 0X011


