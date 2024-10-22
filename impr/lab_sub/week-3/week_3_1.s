mov R3, #22
mov R5, #10

gcd: 
cmp    r3, r5     
        subgt  r3, r3, r5 
        sublt  r5, r5, r3@r3 and r5 both will have answer 
        bne    gcd    
    


