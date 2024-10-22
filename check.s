.TEXT 
    mov r0, #0          ; initialize sum to 0
    mov r1, #8          ; number of data items
    mov r2, #0 ; address of first data item

loop:
    ldr r3, [r2], #4    ; load data item into r3 and increment address
    add r0, r0, r3       ; add data item to sum
    sub r1, r1, #1       ; decrement count
    cmp r1, #0           ; check if count is 0
    bne loop            ; repeat loop if count not 0

store_result:
    mov r2, #21 ; address to store result
    str r0, [r2]            ; store sum in memory

.data
A: .word 10,20,30,40,50,60,70,80
B: .word 0,0,0,0,0,0,0,0,