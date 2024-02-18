SWI_EXIT = 0x11
SWI_WRITE = 0x06

.DATA
srcstr: .asciz "PES UNIVERSITY"
dststr: .asciz "aaaaaaaaaaaaaa"

.TEXT
LDR R0, =srcstr
LDR R1, =dststr

copy_loop:
LDRB R2, [R0], #1
STRB R2, [R1], #1
CMP R2, #0
SWI 0x02
B copy_loop


