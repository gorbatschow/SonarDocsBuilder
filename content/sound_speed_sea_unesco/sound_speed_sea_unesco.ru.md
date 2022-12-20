# Скорость звука в морe. Формула Чена и Миллеро (UNESCO)

- Формула устанавливает зависимость скорости звука в море от температуры, 
солености и гидростатического давления.
- Формула впервые предложена в работе [1] в 1977 г.
- Формула требует корректировки для низких температур и высоких значений давления [2].

## Математическое определение

![$mmd_print_equation_boxed](include/sound_speed_sea_unesco.tex)

![$mmd_print_markdown](include/sound_speed_sea_unesco_args.ru.md)

![$mmd_print_equation](include/sound_speed_sea_unesco_1.tex)
![$mmd_print_equation](include/sound_speed_sea_unesco_2.tex)
![$mmd_print_equation](include/sound_speed_sea_unesco_3.tex)
![$mmd_print_equation](include/sound_speed_sea_unesco_4.tex)

![$mmd_print_markdown](include/sound_speed_sea_unesco_coef.ru.md)

## Программная реализация

![$mmd_print_code]($/sonar_m/toolbox/sound_speed/sound_speed_sea_unesco.m)

## Вычислительные примеры

![$mmd_eval_code]($/sonar_m/example/sound_speed/sound_speed_sea_unesco_ex_1.m)

![$mmd_eval_code]($/sonar_m/example/sound_speed/sound_speed_sea_unesco_ex_2.m)

## Использованная литература

1. ![$mmd_print_reference]($/reference/chen1977speed.enw)
1. ![$mmd_print_reference]($/reference/millero1994equations.enw)
