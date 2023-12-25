/*  Ветвления 1.2
*   max(x+y, x*y, x*z)
**/

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging

    MOV BL, x
    ADDB BL, y
    MOV AL, x
    IMULB y
    CMP BL, AL
    JG M1
    MOVB BL, AL    
M1:
    MOVB AL, x
    IMULB z
    CMP BL, AL
    JG M2
    MOV BL, AL
M2:
    MOV max, BL    
    
    xorq  %rax, %rax
    ret

.data
    x: .byte -8
    y: .byte 6
    z: .byte -4
    max: .byte 0
