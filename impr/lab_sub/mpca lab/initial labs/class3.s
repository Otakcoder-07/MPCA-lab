/*to display a string on output*/
/*
data types of string
a:.asciz -> null terminated '\0'
a:.ascii    -> not null terminated
/*

/*address should be in r0 only*/
/*
.text
ldr r0,= str1
swi 0x02

/*write a program to display integer*/
mov r0, #1
mov r1, #6; number to be displayed in r1
swi 0x06b
swi 0x11

.data
str1:.asciz "string program"
*/
/*write a program for linear search along with it
appropriate output on the console*/

.text
ldr r3,=arr
mov r4, #5; number of elements in the array
mov r5, #3; element to be searched
loop:
	ldr r6, [r3], #4
	cmp r5, r6
	beq fnd
	sub r4, r4, #1
	cmp r4, #0
	bne loop
	beq nfnd

fnd: ldr r0,=str1
	swi 0x02
	swi 0x11

nfnd: ldr r0,=str2
	

.data
arr:. word 3,5,2,3,4
str1: .asciz "Element found"
str2: .asciz "Element not fuond"

