.model small
.data
arr db 01h, 02h , 03h, 04h ,05h;
element db 03h;
msg1 db "Key found$";
msg2 db "Key not found$";
print macro msg;
mov ah,09h;
lea dx, msg;
int 21h;
endm;
.code
mov ax,@data;
mov ds, ax;
mov al,element;
lea si, arr;
mov cx ,05;
up:mov bl,[si];
cmp al,bl;
jz found;
inc si;
dec cx;
jnz up;
print msg2;
found: print msg1;
mov ah,4ch;
int 21h;
end;
