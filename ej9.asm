segment .data
array1 db 1,2,3,4,5,6,7,8,9,10

segment .data
array1 dd 16, 16, 59, 91, 7, 62, 88, 64, 28, 94
segment .text
global main
main:
    ;write your code here
    xor eax, eax
    mov eax, array1
    push eax
    call sub-num_mayor
    pop
    ret
    
    
    
    sub-num_mayor:
    mov ecx, 9
    mov edx, 4
    mov eax, [esp+4]
    for1:
    mov ebx, [esp+4+edx]
    cmp eax, ebx
    jg mayor
    mov eax, ebx
    mayor:
    add edx, 4 
    loop for1
    ret
   
    
    mov edx, 4
    mov eax, [array1]
    mov ecx, 9
    for1:
    mov ebx, [array1+edx]
    cmp eax, ebx
    jg mayor
    mov eax, ebx
    mayor:
    add edx, 4    
    loop for1