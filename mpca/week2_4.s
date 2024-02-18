
.TEXT 

MOV R0,#15
MOV R1,#10

loop:
CMP R0,R1
BEQ end
BLT update
SUB R0,R0,R1
B loop

update:
SUB R1,R1,R0
B loop

end:
.end


