/*  Ветвления 2
       _
      |  -1,     x <= -3
 y =  |  x + 2,  -3 < x <= 9
      |  1,      9 < x <= 19
      |_ x,      x > 19
   
**/
.intel_syntax noprefix
.text
.global main
main:
    mov %rbp, %rsp #for correct debugging
    MOVW AX, x
    CMPW AX, -3
    JG M1
    MOVW AX, -1
    JMP FIN  
M1:
    CMPW AX, 9
    JG M2
    ADDW AX, 2
    JMP FIN
M2:
    CMPW AX, 19
    JG FIN
    MOVW AX, 1
FIN:
    MOV y, AX    
    xorq  %rax, %rax
    ret
    
.data
    x: .word 10
    y: .word 0