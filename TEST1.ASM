.model small
.code
start:
stc;
mov al, 01h;
mov bl, 01h;
sbb al, bl;
mov ah,4ch;
int 21h
end start
end

