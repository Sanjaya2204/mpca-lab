.DATA
A: .WORD 123
.TEXT
LDR R0,=A
LDR R1,[R0]
MOV R3,#0
begin:
MOV R2,R1
CMP R2,#0
BEQ end
loop:
SUB R2,R2,#10
CMP R2,#10
BGT loop
ADD R3,R3,R2
MOV R1,R1,LSR #1
B begin
end:
.end
