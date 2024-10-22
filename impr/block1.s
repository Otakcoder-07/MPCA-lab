.text
 LDR R4, =A
 LDR R1, [R4], #4
 LDR R2, [R4], #4
 LDR R3, [R4], #4
 
 LDR R4, =B
 STR R1, [R4], #4
 STR R2, [R4], #4
 STR R3, [R4], #4
.data
 A: .word 10, 20, 30, 40, 50
 B: .word
 @Here we are trying to move all the bytes(numbers stored in  a to b without ldm and stm)