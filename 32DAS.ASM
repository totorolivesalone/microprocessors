.model small
.code
start:
mov ax,5678h;
mov bx,1111h;
sub al,bl;
das;
mov cl,al;
mov al,ah;
sbb al,bh;
das;
mov ch,al;
mov ax,1234h;
mov bx,1111h;
sbb al,bl;
das;
mov dl,al;
mov al,ah;
sbb al,bh;
das;
mov dh,al;
mov ah,4ch;
int 21h;
end start
end
