/* Одномерные массивы 6.2
   В одномерном массиве байтов чётные элементы уменьшить на 2, а остальные – заменить на 6
**/

.data
    arr: .byte 8, 13, 2, 11, 3, 17, 2
    .equ N, 7

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOV DL, 2
    MOV CX, N
    MOV ESI, 0
    JECXZ M1
M2:    
    MOV AL, arr[ESI]
    CBW
    IDIV DL
    CMP AH, 0
    JE M3
    MOVB arr[ESI], 6
    JMP M4
M3:    
    SUBB arr[ESI], 2 
M4:
    INC ESI
    LOOP M2
M1:        
    xorq  %rax, %rax
    ret
