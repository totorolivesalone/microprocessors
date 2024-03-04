.model small
.code
start:
mov ax, 1234h;
mov bx, 3009h;
add al,bl;
daa;
mov cl,al;
mov al,ah;
adc al,bh;
daa;
mov ch,al;
mov ax, 1234h;
mov bx,3009h;
adc al,bl;
daa;
mov dl,al;
mov al,ah;
adc al,bh;
daa;
mov dh,al;
mov ah ,4ch;
int 21h;
end start
end
