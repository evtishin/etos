 section .text
    global _start

_start:
    mov ah, 0x0E    ; BIOS teletype mode
    mov al, 'E'
    int 0x10        ; BIOS video service
    mov al, 'T'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'a'
    int 0x10
    mov al, 'd'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'r'
       ; Repeat for each character...

    ; Hang the system
    hang:
        jmp hang

    times 510-($-$$) db 0
    dw 0xAA55
