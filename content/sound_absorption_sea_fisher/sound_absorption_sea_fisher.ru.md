# Поглощение звука в море. Формула Фишера и Симмонса

- Формула устанавливает зависимость поглощения звука с расстоянием от частоты, температуры, глубины [1].
- Формула справедлива для "стандартного моря" [2] т.е. при $pH=8$, $S=35‰$.
- Формула впервые предложена в работах [1] в 1977 г.

## Математическое определение

![$mmd_print_equation_boxed](include/sound_absorption_sea_fisher.tex)

![$mmd_print_markdown](include/sound_absorption_sea_fisher_args.ru.md)

![$mmd_print_equation](include/sound_absorption_sea_fisher_1.tex)
![$mmd_print_equation](include/sound_absorption_sea_fisher_2.tex)
![$mmd_print_equation](include/sound_absorption_sea_fisher_3.tex)
![$mmd_print_equation](include/sound_absorption_sea_fisher_4.tex)
![$mmd_print_equation](include/sound_absorption_sea_fisher_5.tex)
![$mmd_print_equation](include/sound_absorption_sea_fisher_6.tex)
![$mmd_print_equation](include/sound_absorption_sea_fisher_7.tex)
![$mmd_print_equation](include/sound_absorption_sea_fisher_8.tex)

![$mmd_print_markdown](include/sound_absorption_sea_fisher_vars.ru.md)

## Программная реализация

![$mmd_print_code]($/sonar_m/toolbox/sound_absorption/sound_absorption_sea_fisher.m)

## Вычислительные примеры

![$mmd_eval_code]($/sonar_m/example/sound_absorption/sound_absorption_sea_fisher_ex_1.m)

## Использованная литература

1. ![$mmd_print_reference]($/reference/fisher1977sound.enw)
1. ![$mmd_print_reference]($/reference/lyman1940composition.enw)
