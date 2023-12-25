/* 
 * ПРОВЕРКИ 3 работа
 * f = 4 * y * z - 5 * x + (y - 2)/ z
 */

.intel_syntax noprefix

.text
.global main
main:
    mov  rbp, rsp   
    
    MOV AL, 4       #AL = y
    IMULB y         #AL = 4*y
    JC err          #Проверка CF
    IMULB z         #AL = 4*y*z
    JC err          #Проверка CF
    MOV CL, AL      #CL = 4*y*z
    MOV AL, 5       #AL = 5
    IMULB x         #AL = 5*x
    JC err          #Проверка CF
    SUB CL, AL      #CX = 4*y*z - 5*x
    JO err          #Проверка OF
    MOV AL, y       #AL = y
    SUB AL, 2       #AL = y-2
    JO err          #Проверка OF
    CBW
    MOV BL, z       #BL = z
    CMP BL, 0       #Проверка на ноль
    JE err
    IDIV BL         #AL = (y-2)/z
    ADD CL, AL      #CL = 4*y*z - 5*x + (y-2)/z
    JO err          #Проверка OF
    MOV f, CL       #f = 4*y*z - 5*x + (y-2)/z
    MOVB error, 0   #error = 0
err:
    xor  rax, rax   # 0 - успешно
    ret             # Выход из программы

.data
    x: .byte -2
    y: .byte 14
    z: .byte 2 
    f: .byte 0
    error: .byte 1