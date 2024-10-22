.TEXT
ldr r0,=a
ldr r1,[r0]
mvn r2,r0
ldr r3,=b
str r2,[r3]

.data
a:.word 0xFFFFFFFF
b:.word 