---
## Front matter
title: "Лабораторная работа №7"
subtitle: "Команды безусловного и условного переходов в Nasm. Программирование ветвлений"
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

Понять принцип работы условных и безусловных переходов в Ассемблере и научиться писать программы с командами, отвечающими за переходы. Научиться работать с файлами листинга и уметь их читать.


# Выполнение лабораторной работы

Для начала нам необходимо создать рабочую папку lab07 и файл lab7-1.asm (рис.1):

![Создание папки и  файла lab7-1.asm](image/1.png)

Создав файл, вставим туда код из листинга.(рис.2)

![Вставляем код](image/2.png)

После этого перенесем в нужную папку файл in_out.asm, чтобы код работал.(рис.3)

![перенос файла в нужную директорию](image/3.png)

Соберем нашу программу и запустим ее.(рис.4)

![Запуск кода](image/4.png)

После этого отредактируем файл, как это сделано во втором листинге.(рис.5)

![Редактирование кода](image/5.png)

Снова запустим наш код.(рис.6)

![Повторный запуск кода](image/6.png)

После этого перепишем код, чтобы он выводил сообщения в обратном порядке - от 3 сообщения к первому.(рис.7)

![Повторное изменение кода](image/7.png)

Проверим и запустим код.(рис.8)

![проверка работоспособности кода](image/8.png)

Код работает верно.

Теперь создадим второй файл.(рис.9)

![Создание второго файла](image/9.png)

Вставим туда код из третьего листинга и запустим файл, проверяя, как он работает.(рис.10)

![Проверка кода второго файла](image/10.png)

Теперь создадим файл листинга при сборке файла.(рис.11)

![Создание файла листинга](image/12.png)

Откроем файл.(рис.12)

![Открытие файла](image/13.png)

Перед нами появляется такое окно.(рис.13)

![Открытый файл](image/14.png)

Программа будет находиться ниже.(рис.14)

![Машинный код и текст программы](image/15.png)

Попробуем разобрать несколько строк кода.

<p><br> 1) Строка 3 отвечает за содержимое сообщения.
<p><br> 2) Cтрока 11 отвечает за начало основной рабочей части кода
<p><br> 3) 14 строка отправляет сообщение в нужный регистр

Теперь допустим ошибку в нашем коде.(рис.15)

![Допущение ошибки](image/16.png)

Создадим файл листинга  еще раз.(рис.16)

![Повторное создание файла листинга](image/17.png)

У нас возникает ошибка.
Откроем файл и найдем ошибку.(рис.17)

![Ошибка в файле](image/18.png)

Как можно заметить, в листинге прописана ошибка.

#Выполнение Самостоятельной работы

Для начала создадим первый файл.(рис.18)

![Создание первого файла](image/19.png)

Запишем в него код, который будет находить наименьшее число среди трех. Вариант выполняемого задания - 16.(рис.19)

![Код первого файла](image/20.png)

Запустим файл.  На выходе получаем число 17.
Это верный ответ.(рис.20)

![Проверка файла](image/21.png)

Теперь создадим второй файл и запишем туда следующий код.(рис.21-23)

![Код второго файла ч.1](image/22.png)
![Код второго файла ч.2](image/23.png)
![Код второго файла ч.3](image/24.png)

Запустим файл и попробуем две пары чисел.(рис.24)

![Проверка кода разными числами](image/25.png)

Код работает верно. Самостоятельная работа выполнена правильно.



# Выводы

В ходе выполнения лабораторной работы были получены навыки работы с командами условных и безусловных переходов и написаны программы для закрепления материала


