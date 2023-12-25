/* Циклы 4 лаба
   Вычислить произведение всех нечётных чисел, находящихся в интервале от 1 до n. 
**/

.data
    n: .word 7
    proizv: .word 0

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOV BX, 3
    MOV AX, 1
M2:
    CMPW BX, n
    JG M1
    MUL BX
    ADD BX, 2
    JMP M2
M1:    
    MOV proizv, AX
    
    xorq  %rax, %rax
    ret
