.model small
.code
start:
mov dx, 1234h;
mov bx, 3099h;
mov al,bl;
add al,dl;
daa;
mov cl,al;
mov al,bh;
adc al,dh;
daa
mov ch,al;
mov ah,4ch;
int 21h;
end start
end
