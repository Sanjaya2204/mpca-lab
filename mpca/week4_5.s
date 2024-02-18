.DATA
A: .WORD 5,10,15,20,25,30,35,40,45,50
.TEXT
LDR R0,=A
MOV R1,#30
MOV R3,#10
MOV R2,#0
loop:
LDR R4,[R0]
ADD R0,R0,#4
CMP R4,R1
BEQ end
SUB R3,R3,#1
CMP R3,#0
BEQ no_res
B loop
end:
MOV R2,#1
SWI  0x11
no_res:
.end