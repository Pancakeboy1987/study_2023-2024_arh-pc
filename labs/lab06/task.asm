%include 'in_out.asm' ; подключение внешнего файла
SECTION .data
msg: DB '(10x-5)^2',0
msg2: DB 'Enter x: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
; ---- Вычисление выражения
mov eax, msg
call sprintLF
mov eax, msg2
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
mov ebx,10
mul ebx
sub eax,5
mul eax
call iprintLF
call quit

