    .text

    mov r0, #0   
    mov r1, #1    
    mov r2, #3  

loop:
    add r3, r0, r1  
    mov r0, r1       
    mov r1, r3       
    sub r2, r2, #1   
    cmp r2, #0       
    bne loop        

end:
    b end           
