.model small
.data
num1 db 08h
num2 db 03h
.code
start: mov ax, @data
mov ds, ax
mov al, num1
mov bl, num2
sub al, bl
mov ah, 4ch
int 21h
end start
end

