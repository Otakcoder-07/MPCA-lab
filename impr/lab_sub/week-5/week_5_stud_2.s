.DATA
A: .WORD 1,-2,3,4,-5,6,-7,8,-9

.TEXT
LDR R0,=A 
MOV R2,#0 
MOV R3,#-1 
	OUTER:
	MOV R4,#0 
	MOV R6,#0
		INNER:
		LDR R5,[R0]
		CMP R5,#0
		RSBlt R5,R5,#0 
		ADD R6,R6,R5
		ADD R0,R0,#4 
		ADD R4,R4,#1 
		CMP R4,#3
		Bne INNER  
	CMP R6,R3
	MOVgt R3,R6 @R3 has the answer
	ADD R2,R2,#1 
	CMP R2,#3
	Bne OUTER
.END