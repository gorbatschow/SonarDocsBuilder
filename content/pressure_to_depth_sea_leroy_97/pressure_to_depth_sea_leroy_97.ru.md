# Расчет глубины при заданном гидростатическом давлении. Формула Лероя '97

- Формула справедлива для идеализированного океана при температуре $0^\circ {\rm{C}}$ и солености $35‰$.
- Предложены [1] попрачовные коэффициенты, для применения формулы к конкретным водам.

## Математическое определение

![@mdt_print_equation_boxed](include/pressure_to_depth_sea_leroy_97.tex)

![@mdt_print_markdown](include/pressure_to_depth_sea_leroy_97_args.md)

![@mdt_print_equation](include/international_gravity_formula.tex)

## Поправочные коэффициенты

![@mdt_print_markdown](include/pressure_to_depth_sea_leroy_97_coef.md)

## Программная реализация

![@mdt_print_code]($/sonar-m/toolbox/pressure_to_depth_sea_leroy_97.m)

## Вычислительные примеры

![@mdt_eval_code]($/sonar-m/example/pressure_to_depth_sea_leroy_97_ex_1.m)

![@mdt_eval_code]($/sonar-m/example/pressure_to_depth_sea_leroy_97_ex_2.m)

1. ![@mdt_print_reference]($/reference/leroy1998depthpressure.enw)
