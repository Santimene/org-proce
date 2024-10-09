section .data
A dw 4
section .text
global main
main:
    ;write your code here
    xor eax, eax
    mov eax, [A]
    push eax
    call sub_calSum
    pop ebx
    ret
    
    
    sub_calSum:
    Enter 0,4
    mov eax, [esp-4]
    mov eax, 0
    mov ecx, [esp+12]
    for1:
    mov edx, ecx
    push ecx
    call sub_elevar_cubo
    pop ebx
    add eax, ecx
    mov ecx, edx
    loop for1
    leave
    ret
    
    sub_elevar_cubo:
    mov ecx,[esp+4]
    imul ecx, [esp+4]
    imul ecx, [esp+4]
    ret