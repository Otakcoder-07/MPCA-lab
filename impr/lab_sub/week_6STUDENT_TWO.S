        MOV r0, #0
        LDR r1, =my_string
        MOV r2, #'a'
        
char_loop:
        LDRB r3, [r1], #1
        CMP r3, #0
        BEQ char_done
        
        CMP r3, r2
        BNE char_loop
        
        ADD r0, r0, #1
        B char_loop
        
char_done:
        MOV r0, r0
        B .
.data

my_string:   .string "hello world!aabbcc"
        
        