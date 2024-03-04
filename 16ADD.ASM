.model small
.code
mov ax, 3333h;
mov bx,2222h;
sub ax,bx;
mov ah,4ch;
int 21h;
end ;
