[org 0x7c00]
; clean screen
mov ax, 3
int 0x10

mov ax, 37
mov bl, 6
div bl; ax / bl = al .. ah

halt:
    jmp halt

times 510 - ($ - $$) db 0
db 0x55, 0xaa