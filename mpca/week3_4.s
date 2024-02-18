.DATA

A: .WORD 10,50,41,55,30,20,11,5,100,77

.TEXT

LDR R0,=A
LDR R1,[R0]
MOV R3,#10

loop:
ADD R0,R0,#4
SUB R3,R3,#1
LDR R2,[R0]
CMP R3,#1
BEQ end
CMP R1,R2
BLT great
B loop

great:
LDR R1,[R0]
B loop

end:
.end

