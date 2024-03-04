.model small
.data
num1 dw 0fffeh;-2
num2 dw 20h;
.code
start:
mov ax, @data
mov ds, ax;
mov ax, num1;
mov bx, num2;
imul bx;
mov ah, 4ch;
int 21
end start
end
