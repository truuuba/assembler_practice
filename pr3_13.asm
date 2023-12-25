/*  Ветвления 1.3
    max^2(z-x, z+y)
**/
.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOVB AL, z
    SUBB AL, x
    IMUL AL
    MOV BL, AL
    MOVB AL, z
    ADDB AL, y
    IMUL AL
    CMP AL, BL
    JG M1
    MOV AL, BL
M1:
    MOV max, AL                
    xorq  %rax, %rax
    ret

.data
    x: .byte -7
    y: .byte 4
    z: .byte -6
    max: .byte 0
