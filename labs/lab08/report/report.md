---
## Front matter
title: "Лабораторная работа №8"
subtitle: "Программирование цикла. Обработка аргументов командной строки"
author: "Коровкин Никита Михайлович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Научиться работать с циклами на языке Ассемблера, а также научиться обрабатывать аргументы командной строки


# Выполнение лабораторной работы

Для начала создадим новую папку для 8-й лабораторной работы и первый файл.(рис.1)

![Создание папки и файла lab8-1.asm](image/1.png)

Запустив Midnight commander, вставляем код из первого листинга.(рис.2)

![Вставляем код из листинга](image/2.png)

Код должен запускать цикл и выводить каждую итерацию число, которое будет на единицу меньше предыдущего. 
Чтобы он работал перенесем файл in_out.asm из папки предыдущей лабораторной работы(рис.3)

![Переносим in_out.asm](image/3.png)

Запустим код и посмотрим результат(рис.4)

![Запуск кода](image/4.png)

Видно, что программа выводит числа от N до единицы.

Теперь изменим код, чтобы в цикле отнималась единица у регистра ecx.(рис.5)

![Изменение кода программы](image/5.png)

Соберем файл еще раз и при запуске тоже введем 4.(рис.6)

![Повторный запуск программы](image/6.png)

На выходе мы получаем бесконечный вывод, а значит количество проходов не совпадает с введенным значением.(рис.7)

![Бесконечный цикл на выходе](image/7.png)

Тогда изменим программу так, чтобы она сохраняла значение регистра ecx в стек.(рис.8)

![Редактируем код](image/8.png)

Запустим код еще раз. На этот раз вывод правильный, значит код написан верно.(рис.9)

![Запуск и вывод программы](image/9.png)

Теперь создадим второй файл.(рис.10)

![Создание второго файла](image/10.png)

Вставим туда код из второго листинга.(рис.11)

![Вставляем код в файл](image/11.png)

Теперь запустим программу и дадим при запуске 3 аргумента.
На выходе мы получим их же.
Программа выводит их по порядку.(рис.12)

![Проверка работы кода](image/зз.png)

Теперь создадим 3-й файл.(рис.13)

![Создание третьего файла](image/12.png)

Вставляем туда код из третьего листинга.(рис.14)

![Вставляем код в файл](image/13.png)

Теперь снова соберем файл.
При запуске введем несколько чисел, которые программа должна сложить.(рис.15)

![Запуск третьего файла](image/14.png)

Все вывелось верно.
Теперь попробуем немного отредактировать код, чтобы числа перемножались.(рис.16)

![Редактируем файл, чтобы числа перемножались](image/15.png)

Теперь запустим файл еще раз.
как мы видим, все числа перемножились и программа вывела верный ответ(рис.17)

![Запуск отредактированного кода](image/16.png)

#Выполнение самостоятельной работы

Для начала создадим файл, где буем писать код.(рис.18)

![Создание файла самостоятельной работы](image/17.png)

Далее откроем файл.(рис.19)

![Открываем файл](image/19.png)

Запишем код, который будет вычислять функцию из варианта с заданными аргументами 16 и затем сложит ответы при всех аргументах.(рис.20-21)

![Код для задания 16 ч.1](image/19.png)

![Код для задания 16 ч.2](image/20.png)

Опишем те строки кода, которые могут  вызывать вопросы:

pop ecx - здесь из регистра достаем количество аргументов в стеке

esi отвечает за хранение промежуточных сумм.

cmp ecx необходимо для проверки, есть ли еще аргументы на входе.

Теперь запустим код и введем несколько разных аргументов для проверки.(рис.22)

![Запуск кода для сложения значений функции](image/21.png)

Код работает правильно, значит самостоятельная работа выполнена верно.


# Выводы

В ходе выполнения данной лабораторной работы были получены знания о циклах на языке ассемблера и получены навыки о работе с ними.

