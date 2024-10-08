segment .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, 10
    push eax
    call sub-ess_par
    pop 
    ret
    
        
    sub-ess_par:
    mov ebx, [esp + 4]
    shr ebx, 1
    jnc es_par
    mov eax, 0
    jmp es_impar
    es_par:
    mov eax, 1
    es_impar:
    ret