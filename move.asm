MOV SI,0500H 
MOV DI,0600H
MOV CL,05H
X: MOV AL,[SI]
   MOV [DI],AL
   INC DI
   MOV [SI],00H
   INC SI
   DEC CL
   
   JNZ X
   
HLT