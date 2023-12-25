/* 
        Ветвления 3
        _
       | -y,  если истина
 u =   |_ 2,  если ложь
        _
       | (x + 9)^2 + y^2 <= 81
 D =   |  x + y <= 0
       |_ y >= -8
**/

.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOVB AL, y
    CMP AL, -8
    JL M1
    ADDB AL, x
    CMP AL, 0
    JG M1
    SUBB AL, x
    IMUL AL
    MOV BL, AL
    MOVB AL, x
    ADD AL, 9
    IMUL AL
    ADD AL, BL
    CMP AL, 81
    JG M1
    MOVB AL, y
    NEG AL
    JMP FIN   
M1: 
    MOVB AL, 2
FIN:
    MOV u, AL
    
    xorq  %rax, %rax
    ret
    
.data
    x: .byte -9
    y: .byte -9
    u: .byte 0
