.TEXT
 LDR R0, =A
 LDR R5, [R0]
 LDR R3, =B
 STR R5, [R3]
.DATA
 A: .WORD 10
 B: .WORD
 @To understand this program view in hexa and open memory as well then search memory values of a and b