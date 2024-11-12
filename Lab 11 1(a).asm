org 100h
jmp start
output db "The Digits from 0 - 9: $"

start:
    mov dx, offset output
    mov ah, 09h
    int 21h

    mov cx, 10
    mov al, '0'

print_loop:
    mov dl, al
    mov ah, 02h
    int 21h
    inc al
    loop print_loop

    mov ah, 4Ch
    int 21h
