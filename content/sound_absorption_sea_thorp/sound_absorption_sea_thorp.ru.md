# Поглощение звука в море. Формула Торпа

- Формула устанавливает зависимость поглощения звука с расстоянием от частоты [1,2].
- Формула впервые предложена в работе [1] 1967 г.

## Математическое определение

![$mmd_print_equation_boxed](include/sound_absorption_sea_thorp.tex)

![$mmd_print_markdown](include/sound_absorption_sea_thorp_args.ru.md)

- Коэффициент $1.0936$ выполняет преобразование из $дБ/килоярд$ в $дБ/км$. 

## Программная реализация

![$mmd_print_code]($/sonar_m/toolbox/sound_absorption/sound_absorption_sea_thorp.m)

## Вычислительные примеры

![$mmd_eval_code]($/sonar_m/example/sound_absorption/sound_absorption_sea_thorp_ex_1.m)

![$mmd_eval_code]($/sonar_m/example/sound_absorption/sound_absorption_sea_thorp_ex_2.m)

## Использованная литература

1. ![$mmd_print_reference]($/reference/thorp1967analytic.enw)
1. ![$mmd_print_reference]($/reference/etter2018underwater.enw)
