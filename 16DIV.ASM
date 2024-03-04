.model small
.code
start:
mov ax, 0008h;
mov bl,02h;
div bl;
mov ah, 4ch;
int 21h;
end start
end
