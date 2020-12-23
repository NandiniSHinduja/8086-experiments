mov si,0500H
mov cl,03H
mov ch,00H
mov al,[si]
inc si    
dec cl
X:cmp al,[si]
   JC Y
   mov al,[si]

Y:inc si 
   dec cl
   JNZ X
   mov [0600H], al
   hlt