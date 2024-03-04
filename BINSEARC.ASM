.model small
.data
arr db 01h, 02h, 03h, 04h ,05h;
key db 02h;
msg1 db "key is found $";
msg2 db "key is not found $";
print macro msg
mov ah, 09h;
lea dx, msg;
int 21h;
endm;
.code
mov ax,@data;
mov ds,ax;
mov dl,key;
mov bx, 00;
mov cx,05;
scan1: cmp bx,cx;
ja fail;
mov ax,bx
add ax,cx;
shr ax,1 ;divide by 2
mov si,ax;
cmp dl,arr[si] ;
jae big;if dl is greater than or equal to element,
dec ax;
mov cx,ax;
jmp scan1;
big:je success;
inc ax;
mov bx,ax;
jmp scan1;
success:print msg1; 
jmp endl
fail:print msg2;
endl:
mov ah,4ch;
int 21h;
end																				
