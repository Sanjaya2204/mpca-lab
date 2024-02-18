.DATA
A: .WORD 10,-3,41,-55,30,22,0,5,83,0
POS: .WORD 0,0,0,0,0
NEG: .WORD 0,0,0,0,0
ZERO: .WORD -1,-1,-1,-1
.TEXT
LDR R0,=A
LDR R1,=POS
LDR R2,=NEG
LDR R3,=ZERO

MOV R4,#10
loop:
LDR R8,[R0]
CMP R4,#0
BEQ end
CMP R8,#0
BEQ zero
BGT pos
BLT neg
neg:
STR R8,[R2]
ADD R2,R2,#4
ADD R0,R0,#4
SUB R4,R4,#1
B loop

pos:
STR R8,[R1]
ADD R1,R1,#4
ADD R0,R0,#4
SUB R4,R4,#1
B loop

zero:
STR R8,[R3]
ADD R3,R3,#4
ADD R0,R0,#4
SUB R4,R4,#1
B loop
end:
.end

