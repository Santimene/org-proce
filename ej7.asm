;ejercicio 7

;ocupa 16 bits

segment .data
array dw 10,-11,23,-42,-15
segment .text
global main
main:
    mov ebp, esp; for correct debugging
    xor eax, eax
    mov ecx, 4
    mov eax, 0
    mov ebx, 0 
    mov edx, 0
    ;sumar los numeros negativos
    for1
    push ecx
    mov cx, [array+edx]
    shl cx, 1
    jnc es_posi
    add ebx, 1
    jmp fue_nega
    es_posi:
    add eax, 1
    fue_nega:
    pop ecx
    add edx, 2
    loop for1                                            
    ret
    
    
    