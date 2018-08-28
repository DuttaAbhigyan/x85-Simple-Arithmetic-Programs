;Program to find out the sum of n-terms of an AP
;Number of terms stored at 0x0001

;Loading of registers
LDA 0x0001
LXI H, 0x0000
LXI D,0x0001
LXI B,0x0006    ;Loading of constant difference

;Performing the addition
AGAIN:DAD D
XCHG
DAD B
XCHG
DCR A
JNZ AGAIN

;Stroing the result at 0x0002
SHLD 0x0002
HLT
