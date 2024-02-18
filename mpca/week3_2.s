.DATA 

A: .WORD 10,3,41,55,30,22,11,5,83,90
ODD: .WORD 0,0,0,0,0,0
EVEN: .WORD 0,0,0,0,0,0

.TEXT

LDR R0,=A
LDR R1,=ODD
LDR R2,=EVEN

MOV R3,#10

loop:
LDR R4,[R0]
LDR R5,[R0]
ADD R0,R0,#4
AND R4,R4,#1

CMP R3,#0
BEQ end

CMP R4,#0
BNE odd
even:
STR R5,[R2]
ADD R2,R2,#4
SUB R3,R3,#1
B loop

odd:
STR R5,[R1]
ADD R1,R1,#4
SUB R3,R3,#1
B loop

end:
.end

