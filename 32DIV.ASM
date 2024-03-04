.model small
.code
mov ax, 0008h;
mov dx, 0000h; dx-ax dividend : 8h
mov bx, 02h;dividend
div bx;
mov ah, 4ch;
int 21h;
end

