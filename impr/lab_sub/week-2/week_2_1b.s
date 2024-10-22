.data

    A: .hWORD 10,20,30,40
    B: .hWORD 

.text

    LDR r0, =A
    LDR r1, =B
    MOV r2, #4
    loop:
        LDRH r3, [r0]
        STRH r3, [r1]
        SUB r2, r2, #1
        ADD r0, r0, #2
        ADD r1, r1, #2
        CMP r2, #0
    Bne loop