.DATA

A: .WORD 10,20
RES: .WORD 0

.TEXT

LDR R0,=A
LDR R2,=RES

LDR R1,[R0]
ADD R0,R0,#4

LDR R3,[R0]

ADD R1,R1,R3

STR R1,[R2]
