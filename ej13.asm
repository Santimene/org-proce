section .data
array dd 1,2
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, [array]
    mov ebx, [array+4]
    push eax
    push ebx
    call sub_swap
    pop ecx
    pop edx
    ret
    
    sub_swap:
    enter 0,4
    mov ecx, [esp-4]
    mov ecx, [esp+8]
    mov eax, ecx
    mov ecx, [esp+12]
    mov ebx, ecx
    leave
    ret
    
    
    
    
    