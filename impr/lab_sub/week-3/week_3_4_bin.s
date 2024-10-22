.data
    A: .BYTE 1,2,3,4,5,6,7,8,9,10
    B: .word 0
.text
@ r2 has final value
    LDR R0, =A
    MOV R1, #8 @Element to search
    MOV R2, #-1 @Position of element
    MOV R3, #0 @low
    MOV R4, #9 @high
    MOV R8, #0
    loop:
        CMP R4, R3
        Bmi exit @low>high
        ADD R5, R3, R4
        ADD R6, R8, R5, LSR #1 @mid
        LDRB R7, [R0,R6]
        CMP R7, R1
        Beq found
        Bmi lesser
        SUB R6, R6, #1
        MOV R4, R6
        B loop
    found:
        mov r3,#01
        ldr r1,=B
        str r3,[r1]
        SWI 0x011
    lesser:
        ADD R6, R6,#1
        MOV R3, R6
        B loop
    exit:
        mov r3,#00
        ldr r1, =B
        str r3,[r1]
		SWI 0x011