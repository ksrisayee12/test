```asm
.model small
.data
    num1 dw 12
    num2 dw 15
    gcd  dw ?
    lcm  dw ?
    msg1 db 'LCM of the given numbers is: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, num1
    mov bx, num2
    mov dx, ax
    mov cx, bx

find_gcd:
    cmp bx, 0
    je gcd_found
    mov dx, ax
    mov ax, bx
    div bx
    mov bx, dx
    jmp find_gcd

gcd_found:
    mov gcd, ax
    mov ax, num1
    mul num2
    div gcd
    mov lcm, ax

    lea dx, msg1
    mov ah, 9
    int 21h

    mov ax, lcm
    call print_num

    mov ah, 4Ch
    int 21h

print_num proc
    mov cx, 0
print_loop:
    mov dx, 0
    div word ptr 10
    push dx
    inc cx
    cmp ax, 0
    jne print_loop

print_digits:
    pop dx
    add dl, '0'
    mov ah, 2
    int 21h
    loop print_digits
    ret
print_num endp

main endp
end main
```
