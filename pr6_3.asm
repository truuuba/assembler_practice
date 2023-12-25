/* Одномерные массивы 6.3
   Найти максимальный элемент массива из слов
**/
.data
    arr: .WORD 12, -2, 4, 7, 15, -3, 0
    .equ N, 7 
    maximum: .WORD 0

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOV ECX, N
    DEC ECX
    MOV ESI, 2
    MOVW AX, arr[0]
M1:
    MOVW BX, arr[ESI]
    CMP AX, BX
    JG M2
    MOV AX, BX
M2:
    ADD ESI, 2    
    LOOP M1
    MOVW maximum, AX  
    xorq  %rax, %rax
    ret
