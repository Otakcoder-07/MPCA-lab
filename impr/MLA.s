.TEXT
@MLA rd,rm,rs,rn
@rd=rm*rs+rn

@load-store instructions:
@(1)Single transfer instructions
@(2)Multiple transfer intstruction
@LDR,LDRH,LDRB,STR,STRH,STRB
@LDR r0,[r1]=> word to which r1 points to is stored in r0
@LDR r0,[r1,#4]=>word at which r1 points to plus 4 is stored in r0 This is called as immediate
@LDR r0,[r1,r2]=>word at which r1 points to plus r2 is stored in r0 This is called as register
@LDR r0,[r1+r2,LSL#2]=>word at which r1 points to plus 4*r2 is stored in r0 This is called as scaled register


.DATA
a: word 2,3,4,5
b: word 4,3,6,8