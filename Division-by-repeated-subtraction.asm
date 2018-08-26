;Program to calculate rounded off division of 2 8bit
;numbers

;Loading register with dividednd stored at 0x0000
;and divisor at 0x0001
LDA 0x0001
MOV B,A
LDA 0x0000
MVI C,0000

;Finding quotient
AGAIN: CMP B
JC ROUND
INR C
SUB B
JMP AGAIN

;ROunding off the answer
ROUND: ADD A
CMP B
JC STORE
INR C

;Storing result in 0x0002
STORE: MOV A,C
STA 0x0002
HLT
