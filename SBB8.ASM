.model small
.data
num1 db 03h
num2 db 08h
.code
start: mov ax, @data
mov ds, ax
mov al, num1
mov bl, num2
sbb al, bl 
mov ah, 4ch
int 21h
end start
end
