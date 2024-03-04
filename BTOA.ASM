.model small
.data
var_line db 10d,13d,"$" ;
msg1 db "Enter binary number: $";
msg2 db "ASCII character:$";
.code
mov ax, @data;
mov ds,ax;
lea dx,var_line;
mov ah, 09h;
int 21h;
lea dx, msg1;
mov ah, 09h;
int 21h;

mov bl, 00h;
mov cx, 08h;
input1:
mov ah, 01h;
int 21h;
sub al, 30h;
shl bl,1;
add bl, al;
loop input1;

lea dx,var_line;
mov ah, 09h;
int 21h;
lea dx, msg2;
mov ah, 09h;
int 21h;
mov dl,bl;
mov ah, 02h;
int 21h;
 lea dx, var_line;
 mov ah, 09h;
 int 21h;
 mov ah,4ch;
 int 21h;
 end

