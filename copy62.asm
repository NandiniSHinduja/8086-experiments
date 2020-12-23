MOV SI,0500H
MOV AL,62
MOV CL,05H
X: MOV [SI],AL
   INC SI
   DEC CL
   JNZ X
   
HLT
   

