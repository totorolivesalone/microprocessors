.model small
.code
mov ax, 2000h;
mov ds,ax;
mov si,0000h;
mov cx ,000ah;
mov ax, 0000h;
back: add al,ds:[si];
jnc skiphere;
inc ah;
skiphere: inc si;
loop back;
mov ds:[si],ax;
mov ah,4ch;
int 21h;
end
