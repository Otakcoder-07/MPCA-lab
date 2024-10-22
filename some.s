.TEXT
mov r0,#512
mov r1,#512
cmp r0,r1
cmp r1,r0
cmn r0,r1
@carry is one because why not? jk it is because r1>r0 and thats the last cmp