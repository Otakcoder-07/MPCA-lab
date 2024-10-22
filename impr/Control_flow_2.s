.TEXT
 MOV R0, #5
 MOV R1, #5
 CMP R0, R1
 bleq label
 MOV R2, #6
label:
 MOV R3, #20
 MOV PC, LR