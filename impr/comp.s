mov r0,#254
mov r1,#255
mov r2,#254
cmp r0,r1@N=1 as 254<255
cmp r0,r2@c=1 z=1 as 255=255
cmp r1,r0@c=1 as 255>254
@teq r0,r1
teq r0,r2
addeq r2,r0,r1
@observe output step by step