.TEXT
mov r1,#3
mov r2,#5
mov r3,#6
@carry is flag is used even for subc because there is no borrow flag
@execute one by one all the below ones
@subs r4,r1,r2@this will set the N=1
@sub r5,r1,r2@this will not set the N=1
@sbc r5,r1,r2@carry=1 => borrow=0 and vice versa
