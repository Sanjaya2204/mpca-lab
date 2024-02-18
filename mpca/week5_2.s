.DATA
A: .WORD 1,2,3,4,5,6,7,8,9

.TEXT
LDR R0, =A
MOV R1, #0
MOV R2, #3
MOV R3, #3
MOV R4, #0
MOV R5, #0
MOV R8,#4
STMEA R13!, {R4, R5}
BL get_addr
LDMEA R13, {R4, R5, R6} 
for_i_and_for_j:
LDR R7, [R6]              
ADD R1, R1, R7            
ADD R5, R5, #1
STMEA R13!, {R4, R5, R6} 
CMP R5, R3
BLT for_i_and_for_j       

MOV R5, #0
ADD R4, R4, #1
CMP R4, R2
BLT for_i_and_for_j 
swi 0x11      

get_addr:
LDMEA R13, {R4, R5}
MLA R7, R3, R4, R5        
MUL R6, R7, R8          
ADD R6, R0, R6            
STMEA R13!, {R4, R5, R6}   
BX LR

