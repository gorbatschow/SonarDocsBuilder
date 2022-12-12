# Расчет глубины при заданном гидростатическом давлении. Формула Биссет-Берман

- Формула справедлива для идеализированного океана при температуре $0^\circ {\rm{C}}$ и солености $35‰$.
- Формула разработана приблизительно в 1971 г, фирмой Биссет-Берман [1,2].

## Математическое определение

![@mdt_print_equation_boxed](include/pressure_to_depth_sea_bisset.tex)

![@mdt_print_markdown](include/pressure_to_depth_sea_bisset_args.md)


## Программная реализация

![@mdt_print_code]($/sonar-m/toolbox/pressure_to_depth_sea_bisset.m)

## Вычислительные примеры

![@mdt_eval_code]($/sonar-m/example/pressure_to_depth_sea_bisset_ex_1.m)

![@mdt_eval_code]($/sonar-m/example/pressure_to_depth_sea_bisset_ex_2.m)

## Использованная литература

1. ![@mdt_print_reference]($/reference/leroy1998depthpressure.enw)
1. ![@mdt_print_reference]($/reference/bisset1971instruction.enw)
