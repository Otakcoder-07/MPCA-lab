.data
NUMBERS:         .word 10, 5, 20, 15, 30, 25, 40, 35, 50

.text
		LDR r0, =NUMBERS
		MOV r1, #0x1FFFFFFF@R1 will have the smallest element
		MOV r2, #5
LOOP:
        LDR r3, [r0], #4
        CMP r3, r1
        Movlt r1, r3

        CMP r2, #1
        Beq END

        SUBS r2, r2, #1
        B LOOP

END:
		swi 0x11