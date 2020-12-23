mov si ,0500H
mov di,0600H
mov AX,0000H
mov DS,AX
mov ES,AX
mov cl,04
mov ch,00H;cx=cl+ch
cld
rep MOVSB
HLT