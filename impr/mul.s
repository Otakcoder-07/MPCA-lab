.TEXt
@20*18
mov r0,#20
mov r1,r0,LSL #4
add r2,r1,r0,LSL#1
@20*3
add r3,r0,r0,LSL#1
@20*5
add r4,r0,r0,LSL#2@LSL-Logical Shift Left
mov r5,#0001
mov r6,r5,ROR #2


swi 0x11