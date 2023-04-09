[org 0x7c00]
; clean screen
mov ax, 3
int 0x10

mov ax, 0
mov ds, ax
mov cx, 0
mov cl, [len]

mov ax, 0xb800
mov ds, ax 

mov ax, 0
mov es, ax

mov si, message
mov di, 0
print:
    mov al, [es:si]
    mov [di], al

    inc si
    add di, 2

    loop print

halt:
    jmp halt

message:
    db "Hello", 0
len:
    db $ - message

times 510 - ($ - $$) db 0
db 0x55, 0xaa