.model small
.data
arr db 05h, 04h, 03h, 02h, 01h;
.code
mov ax, @data;
mov ds, ax;
mov cx,5; total elements
dec cx; n-1 passes
outerloop:
lea si,arr;
mov dx,cx;
innerloop:
 mov al,ds:[si];
 mov bl, ds:[si+1];
cmp al,bl;
jb next; if bx is greater than ax jump;
mov ds:[si],bl;
mov ds:[si+1],al;
next:inc si;
dec dx;
jnz innerloop ; if dx does not becomes 0 
loop outerloop
mov ah,4ch;
int 21h;
end;