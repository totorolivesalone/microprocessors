.model small
.data
num1 dd 12345678h;
num2 dd 87654321h;
res dq 0;
.code
start:
mov ax,@data;
mov ds, ax;
mov si, 0000h;
mov ax, [si];
mov bx, [si+ 04h]; lower half of both numbers
mul bx;
mov [si+08h],ax; stored in lower half of res variable
mov [si + 0ah],dx;
mov ax, [si+02h];
mov bx, [si+06h]; multiply top half of both numbers
mul bx;
mov [si+0ch], ax;
mov [si+0eh], bx; save in top half of result

mov ax, [si + 02h];
mov bx , [si +04h]; upper num1x lower num2
mul bx;
add ax, [si+0ah];
mov [si+0ah],ax;
adc dx, [si+0ch];
mov [si+0ch] , dx;
mov ax, 0000h;
adc ax, [si+0eh]; carry of last adc
mov [si+0eh], ax;

mov ax, [si];
mov bx, [si+06h];
mul bx;lower half of num1 x upper half of num2
add ax, [si+0ah];
mov [si+0ah],ax;
adc dx, [si+0ch];
mov [si+0ch],dx;
mov ax, 0000h;
adc ax, [si+0eh];
mov [si+0eh],ax;
mov ah, 4ch;
int 21h;
end start
end

