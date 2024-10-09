%include "io.inc"
array1 db 24,1,129,3,4,66
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ebx, ebx
    xor edx, edx
    lea eax, array1
    mov ecx, 6
    push eax 
    call sub_cant_palind 
    pop ebx
    ret
    
       
    sub_cant_palind:
    mov ebp, [esp+4]
    mov eax, 0
    for2:
    mov al, [ebp]
    push ecx
    push eax
    mov ecx, 8    
    for1:
    shr al, 1
    rcl bl, 1
    loop for1
    pop eax
    cmp al, bl
    je son_iguales
    jmp noson_iguales
    son_iguales:
    inc dl
    noson_iguales:
    inc ebp
    pop ecx
    loop for2
    ret