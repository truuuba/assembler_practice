/*  Ветвления 1.1
    min(x, y, z)
**/
.intel_syntax noprefix
.text
.global main
main:
    MOVB AL, x
    CMPB AL, y
    Jl X_min
    MOVB AL, y   
X_min:    
    CMP AL, z
    JL M1
    MOVB AL, z
M1:
    MOV min, AL
    xorq  %rax, %rax
    ret

.data
    x: .byte -5
    y: .byte 7
    z: .byte 13
    min: .byte 0