mov si,0500h 
mov cl,05H
X:mov dl,[si]  
  inc si 
  
  
  mov ah,02h
  int 21h 
  
  
  dec cl
  jnz X
hlt