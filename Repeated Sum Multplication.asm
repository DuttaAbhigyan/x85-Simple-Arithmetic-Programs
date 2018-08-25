;A Program to multpily 2 8 bit numbers stored 
;at 0x0001 and 0x0002 and store it in 0x0003 by
;repeated addition method

LDA 0x0001
MOV C,A
LDA 0x0002
CMP C
JC START

;Step for making minimum number of additions
MOV B,A
MOV A,C
MOV C,B

;Actual multiplication
START: MVI B,0x00000
LXI H,0x0000
AGAIN: DAD B
DCR A
JNZ AGAIN

;Stroing number
SHLD 0x0003
hlt
