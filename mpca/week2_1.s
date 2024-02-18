.TEXT
MOV R0,#5
MOV R1,#5
CMP R0,R1
BEQ L1
SUB R2,R0,R1
B end

L1:
ADD R2,R1,R0

end:
.end






