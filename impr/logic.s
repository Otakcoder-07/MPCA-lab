.TEXT
 MOV R0, #5
 MOV R1, #6
 AND R2, R0, R1 @ Logical AND
 ORR R3, R0, R1 @ Logical OR
 EOR R4, R0, R1 @ Logical XOR
 MVN R5, R0 @ Complement 
.END