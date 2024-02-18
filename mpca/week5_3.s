.DATA
 A:   .ASCIZ  "HELLO"

.TEXT
LDR  R1, =A
MOV R2,#-1
LOOP:  
ADD R2,R2,#1
LDRB  R0, [R1], #1
CMP R0, #0
SWINE 0x02             
BNE LOOP 
SWI  0x11                


