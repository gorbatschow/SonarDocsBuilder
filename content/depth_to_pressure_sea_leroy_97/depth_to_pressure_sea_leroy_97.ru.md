# Расчет гидростатического давления на заданной глубине. Формула Лероя '97

- Формула устанавливает зависимость гидростатического давления от глубины [1].
- Формула впервые предложена в работе [1] в 1997 г. 
- Формула справедлива для идеализированного океана при температуре $0^\circ {\rm{C}}$ и солености $35‰$.
- Предложены [1] попрачовные коэффициенты, для применения формулы к конкретным водам.

## Математическое определение

![@mdt_print_equation_boxed](include/depth_to_pressure_sea_leroy_97.tex)

![@mdt_print_markdown](include/depth_to_pressure_sea_leroy_97_args.ru.md)

![@mdt_print_equation](include/depth_to_pressure_sea_leroy_97_1.tex)
![@mdt_print_equation](include/depth_to_pressure_sea_leroy_97_2.tex)
![@mdt_print_equation](include/depth_to_pressure_sea_leroy_97_3.tex)
![@mdt_print_equation](include/depth_to_pressure_sea_leroy_97_4.tex)

## Поправочные коэффициенты

![@mdt_print_markdown](include/depth_to_pressure_sea_leroy_97_coef.ru.md)

## Программная реализация

![@mdt_print_code]($/sonar_m/toolbox/depth_pressure/depth_to_pressure_sea_leroy_97.m)

## Вычислительные примеры

![@mdt_eval_code]($/sonar_m/example/depth_pressure/depth_to_pressure_sea_leroy_97_ex_1.m)

## Использованная литература

1. ![@mdt_print_reference]($/reference/leroy1998depthpressure.enw)
