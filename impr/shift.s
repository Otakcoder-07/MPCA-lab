.TEXT
MOV R2, #0X00000030
MOV R0, R2, LSL #2@This is immediate shift
mov r1,#2
mov r3,r2,r1
swi 0x11