
ldr r1, =a
ldr r2, =b
ldr r3,[r1]
ldr r5,[r2]
gcd: 
cmp    r3, r5     
        subgt  r3, r3, r5 
        sublt  r5, r5, r3@r3 and r5 both will have answer 
        bne    gcd    
    


.data
a: .word    22
b: .word    10