.text
mov r0,#8
mov r1,#9
add r2,r0,r1; r2 = ro + r1
subs r3, r0, r1; r3 = r0 - r1
swi 0x11; halt the processor
