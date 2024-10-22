.TEXT
mov r0,#5
mov r1,#10
cmp r0,r1
swi 0x11
@if both are equal zero and carry will become one,carry flag is set to 1 because second is not lesser than the first 
@if first is greater then carry=1
@if second is greater then negative=1