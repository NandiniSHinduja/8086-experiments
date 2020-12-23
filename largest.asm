mov si,0500H
mov cl,05H
mov ch,00H
mov al,[si]
inc si
X:cmp al,[si]
   jnc Y
   mov al,[si]

Y:inc si 
   dec cl
   JNZ X
   mov [0600H], al
   hlt