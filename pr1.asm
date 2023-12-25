/*
 * Арифметические команды (знаковые) 1
 * 
 * f = a * b / c + d - e
 *     b   b
 * b     w     b   b   b  
 * b - байт
 * w - слово
 */

.intel_syntax noprefix

.text
.global main
main:
    mov  rbp, rsp   # for correct debugging
    mov  al, a      # al = a
    imul byte ptr b # ax = a * b
    idiv byte ptr c # al = a * b / c
    add  al, d      # al = a * b / c + d
    sub  al, e      # al = a * b / c + d - e
    mov  f, al      # f = al

    xor  rax, rax   # 0 - успешно
    ret             # Выход из программы

.data
    a: .byte -5
    b: .byte 8
    c: .byte 10
    d: .byte 21
    e: .byte 16
    f: .byte 0
