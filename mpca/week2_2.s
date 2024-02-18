.TEXT

MOV R0,#5
AND R1,R0,#1
CMP R1,#0
BEQ L1
MOV R2,#1
B end

L1:
LDR R2,=0

end:
.end
