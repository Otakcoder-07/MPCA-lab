.TEXT
 LDR R0, =A
 LDR R1, [R0]
 ADD R2, R1, #9
 
 LDR R3, =B
 STR R2, [R3] 
.DATA
 A: .WORD 10
 B: .WORD
 @This program adds 9 to number at a and stores it at b