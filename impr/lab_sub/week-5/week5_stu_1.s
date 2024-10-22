.data
MATRIX_A:        .word 1, 2, 3
                .word 4, 5, 6
                .word 7, 8, 9

MATRIX_B:        .word 9, 8, 7
                .word 6, 5, 4
                .word 3, 2, 1

MATRIX_C:       .word 0, 0, 0
                .word 0, 0, 0
                .word 0, 0, 0
.text
        MOV r7,#3
        LDR r0, =MATRIX_A
        LDR r1, =MATRIX_B
        LDR r2, =MATRIX_C

        MOV r3, #0

outer_loop:
        MOV r4, #0

inner_loop:
        LDR r5, [r0], #4
        LDR r6, [r1], #4

        ADD r5, r5, r6
        STR r5, [r2], #4

        ADD r4, r4, #1
        CMP r4,r7
        Bne inner_loop

        ADD r3, r3, #1
        CMP r3, r7
        Bne outer_loop

        MOV r0, #0
        BX lr