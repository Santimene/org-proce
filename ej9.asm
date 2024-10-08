segment .data
array1 dd 16, 16, 59, 91, 7, 62, 88, 64, 28, 94
segment .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    lea eax, array1
    push eax
    call sub_num_mayor
    pop ebx
    ret
 
    sub_num_mayor:
    mov ecx, 9
    mov edx, 4
    mov ebp, [esp+4]
    mov eax, [ebp]
    for1:
    mov ebx, [ebp+edx]
    cmp eax, ebx
    jg mayor
    mov eax, ebx
    mayor:
    add edx, 4 
    loop for1
    ret
