# Скорость звука в морe. Формула Чена и Миллеро (UNESCO)

- Формула устанавливает зависимость скорости звука в море от температуры, 
солености и гидростатического давления.
- Формула впервые предложена в работе [1] в 1977 г.
- Формула требует корректировки для низких температур и высоких значений давления [2].

## Математическое определение

![@mdt_print_equation_boxed](include/sound_speed_sea_unesco.tex)

![@mdt_print_markdown](include/sound_speed_sea_unesco_args.ru.md)

![@mdt_print_equation](include/sound_speed_sea_unesco_1.tex)
![@mdt_print_equation](include/sound_speed_sea_unesco_2.tex)
![@mdt_print_equation](include/sound_speed_sea_unesco_3.tex)
![@mdt_print_equation](include/sound_speed_sea_unesco_4.tex)

![@mdt_print_markdown](include/sound_speed_sea_unesco_coef.ru.md)

## Программная реализация

![@mdt_print_code]($/sonar_m/toolbox/sound_speed/sound_speed_sea_unesco.m)

## Вычислительные примеры

![@mdt_eval_code]($/sonar_m/example/sound_speed/sound_speed_sea_unesco_ex_1.m)

![@mdt_eval_code]($/sonar_m/example/sound_speed/sound_speed_sea_unesco_ex_2.m)

## Использованная литература

1. ![@mdt_print_reference]($/reference/chen1977speed.enw)
1. ![@mdt_print_reference]($/reference/millero1994equations.enw)
