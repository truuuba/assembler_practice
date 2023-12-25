/* Циклы с известным количеством шагов 5
   5^2 + 10^2 + 15^2 + 20^2 + …
**/

.data
    sum: .word 0
    n: .word 3

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOVW CX, n
    MOV DX, 0
    JECXZ M2
    MOV BL, 5
 M1:    
    MOV AL, BL
    MUL AL
    ADD DX, AX
    ADD BL, 5
    LOOP M1
M2:
    MOV sum, DX 
    xorq  %rax, %rax
    ret