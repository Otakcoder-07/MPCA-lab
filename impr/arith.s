.TEXT
mov r0,#10
mvn r1,#10
mvn r2,r1
cmp r2,r0
@mvneq r4,#10
adc r0,r1,r0@0 because  carry=1=>1+10-11