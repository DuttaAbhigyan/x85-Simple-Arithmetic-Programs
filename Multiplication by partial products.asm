;Program to calculate multiplication of 2 numbers
;by partial products method

;Loading registers with relevant values with the 2
;numbers at 0x0000 and 0x0001
MVI C,0x0008
LXI H, 0x0000
MVI D,0x0000
LDA 0x0000
MOV E,A
LDA 0x0001

;Multiplication
AGAIN:RRC
JNC SHIFT
DAD D
SHIFT: XCHG
DAD H
XCHG
DCR C
JNZ AGAIN

;Storing multiplied value at 0x0002-0x0003
SHLD 0x0002
HLT
