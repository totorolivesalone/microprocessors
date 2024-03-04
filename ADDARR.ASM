.model small
.data
arr1 db 01h, 02h, 03h, 04h, 05h;
arr2 db 01h, 02h, 03h, 04h ,05h;
arr3 db 5 dup(0)
.code
mov ax,@data;
mov ds, ax;
mov  cx,5;
mov si, offset arr1;
mov di, offset arr2;
mov bx, offset arr3;
sum_arr:
mov al, [si];
add al, [di];
mov [bx],al;
inc si;
inc di;
inc bx;
loop sum_arr;
mov ah, 4ch;
int 21h;
end;
