MOV DX, 8807H
MOV AL, 80H
X: OUT DX, AL
MOV AL, 00H
MOV DX, 8801H
OUT DX, AL
CALL Y
MOV AL, 0FFH 
OUT DX, AL
CALL Y
JMP X
Y: MOV CX,015D
NOP 
NOP 
RET