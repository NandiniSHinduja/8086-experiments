MOV SI,0500H
MOV DI,0600H
MOV CL,03H
X:INC SI
DEC CL
JNZ X
DEC SI
MOV CL,03H
Y:MOV AL,[SI]
MOV [DI],AL
DEC SI
INC DI
DEC CL
JNZ Y
HLT