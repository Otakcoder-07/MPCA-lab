.TEXT
@Write a program to add first n natural numbers here n=10
mov r0,#0
mov r1,#0
loop:   add r0,r0,r1
        add r1,r1,#1
        cmp r1,#10
BLE loop@BLE=Branch less than equal
@if we use BLT instead of BLE i.e Be less than answer will be wrong as for n=10 it will not add 10
swi 0x11