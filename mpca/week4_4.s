.DATA
A: .WORD 10,20,30,40,50,60,70,80,90
B: .WORD 1,2,3,4,5,6,7,8,9
RES: .WORD 0,0,0,0,0,0,0,0,0

.TEXT
LDR R0,=A
LDR R1,=B
LDR R2,=RES

MOV R3,#9
loop:
CMP R3,#0
BEQ end
LDR R4,[R0]
ADD R0,R0,#4
LDR R5,[R1]
ADD R1,R1,#4
ADD R6,R4,R5
STR R6,[R2]
ADD R2,R2,#4
SUB R3,R3,#1
B loop

end:
.end

