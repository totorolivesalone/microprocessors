.model small
.code
mov al,0feh;-2
mov bl,02h;
idiv bl;
mov ah,4ch;
int 21h;
end

