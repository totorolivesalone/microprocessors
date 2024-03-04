.model small;
.code
mov ax, 8945h;
mov bx, 6423h;
sub al,bl;
das;
mov cl,al;
mov al,ah;
sbb al,bh;
das;
mov ch, al;
mov ah, 4ch;
int 21h;
end
