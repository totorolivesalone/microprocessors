.model small
.code
start:
mov dl, 0f3h;
mov bh , 7fh;
sub dl,bh;
mov ah,4ch;
int 21h;
end start
end
