/* Двумерные массивы ПОДГОТОВКА К КР
   Найти сумму чётных элементов двумерного массива из слов
**/
.data 
    sum: .WORD 0   
    arr: .WORD 12, -2, 4, 7, 15, -3, 10, 6, 13, 14, 1, 17
    .equ ROW, 4
    .equ COLUMN, 3

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOV DX, 0
    MOV BL, 2
    MOV CX, ROW*COLUMN
    MOV ESI, 0
M2:
    MOVW AX, arr[ESI]
    IDIV BL
    CMP AH, 0     
    JNE M1
    ADDW DX, arr[ESI]
M1:
    ADD ESI, 2
    LOOP M2
    MOVW sum, DX
    xorq  %rax, %rax
    ret
