.TEXT
 LDR R0, =MYSTR
 SWI 0X02
 SWI 0X11
.DATA
 MYSTR: .ASCIZ "HELLO WORLD"