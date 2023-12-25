/* Двумерные массивы ПОДГОТОВКА К КР
   Заполнить двумерный массив по правилу: все элементы первой строки равны -5, 
   второй равны -10, третьей равны -15, четвёртой равны -20, …
**/
.data
    arr: .BYTE -2, 5, 11, 6, 3, 12, 18, 4, 45, 13, 6, 7
    .equ ROW, 3
    .equ COL, 4

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOVW CX, ROW
    MOV AL, 0
    MOV ESI, 0
M1:   
    MOV DX, CX
    ADD AL, -5
    MOV CX, COL
M2:   
    MOVB arr[ESI], AL
    INC ESI
    LOOP M2
    MOV CX, DX
    LOOP M1
    xorq  %rax, %rax
    ret
