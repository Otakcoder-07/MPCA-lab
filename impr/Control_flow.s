.TEXT
 MOV R0, #5
 MOV R1, #5
 CMP R0, R1
@ beq label
 MOV R2, #6@For beq:Notice that this line isnt executed as pc moves to label after beq and the pc doesnt return back 
label:
 MOV R3, #20