.TEXT

MOV R0,#5
MOV R1,#1
loop:
MUL R2,R1,R0
MOV R1,R2
SUB R0,R0,#1
CMP R0,#1
BNE loop

.end