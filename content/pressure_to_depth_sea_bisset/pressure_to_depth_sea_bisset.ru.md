# Расчет глубины при заданном гидростатическом давлении. Формула Биссет-Берман

- Формула справедлива для идеализированного океана при температуре $0^\circ {\rm{C}}$ и солености $35‰$.
- Формула разработана приблизительно в 1971 г, фирмой Биссет-Берман [1,2].

## Математическое определение

![$mmd_print_equation_boxed](include/pressure_to_depth_sea_bisset.tex)

![$mmd_print_markdown](include/pressure_to_depth_sea_bisset_args.ru.md)


## Программная реализация

![$mmd_print_code]($/sonar_m/toolbox/depth_pressure/pressure_to_depth_sea_bisset.m)

## Вычислительные примеры

![$mmd_eval_code]($/sonar_m/example/depth_pressure/pressure_to_depth_sea_bisset_ex_1.m)

## Использованная литература

1. ![$mmd_print_reference]($/reference/leroy1998depthpressure.enw)
1. ![$mmd_print_reference]($/reference/bisset1971instruction.enw)
