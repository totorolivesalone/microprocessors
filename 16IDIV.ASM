.model small
.code
start:
mov ax, 26f8h;
mov bh, 0aah;
idiv bh;
mov ah,4ch;
int 21h;
end start
end
