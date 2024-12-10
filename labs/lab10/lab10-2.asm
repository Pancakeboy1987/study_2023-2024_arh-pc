%include 'in_out.asm'
SECTION .data
filename db 'name.txt', 0h ; Имя файла
msg db 'Как вас зовут? ', 0h ; Сообщение
name db 'Меня зовут ', 0h
SECTION .bss
sentence resb 255 ; переменная для вводимой строки
SECTION .text
global _start

_start:
mov eax,msg ; переносим в регистр еах
call sprint ; выводим сообщение
mov ecx,  sentence ; переменная для вводимой строки в регистре
mov edx, 255 ; выделяем память
call sread ;считываем

mov ecx, 0777o ; создание файла
mov ebx, filename 
mov eax, 8 ; записываем дескриптор файла
int 80h ; вызываем ядро

mov edx, 255 ; 
mov ecx, name ; адрес строки для записи в файл
mov ebx, eax ; переносим дескриптор файла
mov eax, 4 ; 
int 80h ; вызываем ядро

mov eax, 5

mov edx, 2 ; значение смещения -- конец файла
mov ecx, 0 ; смещение на 0 байт
mov ebx, eax ; дескриптор файла
mov eax, 19 ; номер системного вызова `sys_lseek`
int 80h ; вызов ядра
mov edx, 9 ; Запись в конец файла
mov ecx, sentence ; строки из переменной `msg`
mov eax, 4
int 80h

mov ebx, esi
mov eax, 6
int 80h
call quit
