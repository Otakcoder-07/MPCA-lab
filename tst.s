.TEXT
mov r0,#5
mov r1,#20
@tst r0,r1
mov r2,#5
tst r2,r0
teq r2,r1
swi 0x11
@The zero flag is set if after doing bitwise AND the result is zero