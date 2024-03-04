.model small
.data
var_line db 10d,13d,"$" ;
msg1 db "Enter ASCII character: $";
msg2 db "binary number:$";
res db 9 dup('$');
.code
mov ax, @data;
mov ds,ax;
lea dx,var_line;
mov ah, 09h;
int 21h;
lea dx, msg1;
mov ah, 09h;
int 21h;
;take input
mov ah, 01h;
int 21h;
mov bl,al;
mov si, 00h;
mov cx, 08h;
mov ax, 0000h;
mov al,bl;
input1:
mov ah,0h;
shl ax,1;
or ah,30h;
mov byte ptr res +si, ah;
inc si;
loop input1;

lea dx,var_line;
mov ah, 09h;
int 21h;
lea dx, msg2;
mov ah, 09h;
int 21h;

lea dx, res;
mov ah, 09h;
int 21h;
 lea dx, var_line;
 mov ah, 09h;
 int 21h;
 mov ah,4ch;
 int 21h;
 end

