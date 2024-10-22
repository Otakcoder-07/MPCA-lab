.TEXT
mov r0,#10@This line assigns  the value 10 to r0
mov r1,#20
add r2,r0,r1 @ the at symbol is used for commenting and this is simple operations
and r3,r0,r1@does bitwise and between r0 and r1 and stores result in r1
orr r4,r0,r1@same as above but OR
eor r5,r0,r1@XOR
mvn r6,r5@moves value of -(r5+1) to r6
@We can also use adc for addwith carry and sub for subtraction
add r3,r3,#7@adds 7 to r3
@mul operator multiplies but we cant have source and destination as same and no multiplication with a constant
@LSL and RSL are shift operations
swi 0x11
@The largest possible number on which mov can operate is 512 for larger numbers use memorys