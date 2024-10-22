; Write a program in ARM7TDMI-ISA to find the sum of  N natural numbers.
; Store the result in the memory location. Do not use data segment.

MOV R0, #0
MOV R1, #1
MOV R2, #8 ;number of elements 
loop: 
	ADD R0, R0, R1
	ADD R1, R1, #1
	CMP R1,R2
	Bne loop