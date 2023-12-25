/* Одномерные массивы 6.1
   Посчитать количество элементов массива из слов, которые не меньше (-1)
**/

.data
    arr: .word -5, 4, -4, 2, 2, -10, 0
    .equ N, 7
    count: .byte 0

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOV AL, 0 
    MOV ESI, 0
    MOV ECX, N
    JECXZ M1
M3:    
    CMPW arr[ESI], -1
    JL M2
    INC AL
M2:
    ADD ESI, 2
    LOOP M3
M1:
    MOV count, AL
    xorq  %rax, %rax
    ret
