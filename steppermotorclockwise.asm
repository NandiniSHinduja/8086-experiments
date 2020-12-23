#start=stepper_motor.exe#
jmp start
datacw db 0000_0110b
       db 0000_1100b
       db 0000_1001b  
       db 0000_0011b  
   
dataccw db 0000_0110b
        db 0000_0011b
        db 0000_1001b  
        db 0000_1100b 
        

START: MOV BX , OFFSET datacw
       MOV SI,0   
       MOV CX,0000H
NEXT_STEP:
WAIT: IN AL,07h
      TEST AL,10000000b
      JZ WAIT
      MOV AL,[BX][SI]
      OUT 7,AL
      INC SI  
      CMP SI,4
      JC NEXT_STEP
      MOV SI,0
      JMP NEXT_STEP