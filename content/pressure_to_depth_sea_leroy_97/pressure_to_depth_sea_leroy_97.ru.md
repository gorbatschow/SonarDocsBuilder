# Расчет глубины при заданном гидростатическом давлении. Формула Лероя '97

- Формула справедлива для идеализированного океана при температуре $0^\circ {\rm{C}}$ и солености $35‰$.
- Предложены [1] попрачовные коэффициенты, для применения формулы к конкретным водам.

## Математическое определение

![@mmd_print_equation_boxed](include/pressure_to_depth_sea_leroy_97.tex)

![@mmd_print_markdown](include/pressure_to_depth_sea_leroy_97_args.ru.md)

![@mmd_print_equation](include/international_gravity_formula.tex)

## Поправочные коэффициенты

![@mmd_print_markdown](include/pressure_to_depth_sea_leroy_97_coef.ru.md)

## Программная реализация

![@mmd_print_code]($/sonar_m/toolbox/depth_pressure/pressure_to_depth_sea_leroy_97.m)

## Вычислительные примеры

![@mmd_eval_code]($/sonar_m/example/depth_pressure/pressure_to_depth_sea_leroy_97_ex_1.m)

## Использованная литература

1. ![@mmd_print_reference]($/reference/leroy1998depthpressure.enw)
