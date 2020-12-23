MOV DX, 8807H;access port 1
MOV AL, 80H;it tells the port that we have to do the output operation
OUT DX, AL;it will give the output to the ECG machine
MOV AL, 00H
MOV DX, 8801H
L1: OUT DX, AL
INC AL
CMP AL, 0FFH
JNZ L1  
L2: OUT DX, AL
DEC AL
JNZ L2
JMP L1
HLT
