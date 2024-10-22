
        
        MOV r0, #0
        MOV r1, #0
        LDR r2, =0x12345678
        
sum_loop:
        CMP r1, #8
        Beq sum_done
        
        RSB r3, R1,#8
        MOV r4, #4
        mov r6,r3
        MUL r3, r6, r4
        
        LSR r5, r2, r3
        AND r5, r5, #0xF
        
        ADD r0, r0, r5
        
        ADD r1, r1, #1
        
        B sum_loop
        
sum_done:
        MOV r0, r0
        swi 0x11
        
        
