section .text
    global _start

_start:
    ; Your bootloader code goes here

    ; Hang the system
    hang:
        jmp hang

    times 510 - ($ - $$) db 0
    dw 0xAA55
    
