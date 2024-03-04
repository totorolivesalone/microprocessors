.model small
.data
num1 db 05h
num2 db 03h
.code
start:mov ax, @data
mov ds, ax
mov al, num1
mov bl, num2
add al, bl
mov AH, 4CH
int 21H
end start
end
