;Multiply 2 numbers
; 653x72
; 72 = 64 + 8 = 6 + 3
.DATA
A: .WORD 653

.TEXT
LDR R0,=A
LDR R1,[R0]
MOV R2,R1,LSL #6
ADD R2,R2,R1,LSL #3@R2 has the answer
SWI 0x11