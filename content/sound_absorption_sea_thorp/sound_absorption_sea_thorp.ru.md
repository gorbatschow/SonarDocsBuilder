# Поглощение звука в море. Формула Торпа

- Формула устанавливает зависимость поглощения звука с расстоянием от частоты [1,2].
- Формула впервые предложена в работе [1] 1967 г.

## Математическое определение

![@mdt_print_equation_boxed](include/sound_absorption_sea_thorp.tex)

![@mdt_print_markdown](include/sound_absorption_sea_thorp_args.md)

- Коэффициент $1.0936$ выполняет преобразование из $дБ/килоярд$ в $дБ/км$. 

## Программная реализация

![@mdt_print_code]($/sonar-m/toolbox/sound_absorption_sea_thorp.m)

## Вычислительные примеры

![@mdt_eval_code]($/sonar-m/example/sound_absorption_sea_thorp_ex_1.m)

![@mdt_eval_code]($/sonar-m/example/sound_absorption_sea_thorp_ex_2.m)

## Использованная литература

1. ![@mdt_print_reference]($/reference/thorp1967analytic.enw)
1. ![@mdt_print_reference]($/reference/etter2018underwater.enw)
