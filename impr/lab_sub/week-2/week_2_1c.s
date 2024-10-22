.data

    A: .Byte 10,20,30,40
    B: .BYTE

.text

    LDR r0, =A
    LDR r1, =B
    MOV r2, #4
    loop:
        LDRB r3, [r0]
        STRB r3, [r1]
        SUB r2, r2, #1
        ADD r0, r0, #1
        ADD r1, r1, #1
        CMP r2, #0
    Bne loop