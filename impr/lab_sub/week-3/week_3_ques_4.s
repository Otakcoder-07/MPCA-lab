A: .WORD 10,20,30,40,50
KEY: .WORD 30

LDR R0,=A
LDR R1,=KEY
LDR R5,[R1]
MOV R4,#1

LOOP:	LDR R2,[R0],#4
	CMP R5,R2
	Beq B
	ADD R4,R4,#1@R4 will have the index
	CMP R4,#5
	Bne LOOP
	MOV R3,#00
	STR R3,[R1]
	b EXIT
	
B: 
	MOV R3,#01
	STR R3,[R1]
	SWI 0X11

EXIT:
	swi 0x11