# Pressure to depth conversion. Leroy '97 equation

## Mathematical definition

![$mmd_print_equation_boxed](include/pressure_to_depth_sea_leroy_97.tex)

This is an equation for the "standard" ocean. Use corrective terms from the table above for particular applications.

![$mmd_print_markdown](include/pressure_to_depth_sea_leroy_97_args.en.md)

![$mmd_print_equation](include/international_gravity_formula.tex)

![$mmd_print_markdown](include/pressure_to_depth_sea_leroy_97_vars.en.md)

## Corrective terms for various areas

![$mmd_print_equation](include/pressure_to_depth_sea_leroy_97_corr.tex)

![$mmd_print_markdown](include/pressure_to_depth_sea_leroy_97_coef.en.md)

## Octave/Matlab implementation

![$mmd_print_code]($/sonar_m/toolbox/depth_pressure/pressure_to_depth_sea_leroy_97.m)

## Computational examples

![$mmd_eval_code]($/sonar_m/example/depth_pressure/pressure_to_depth_sea_leroy_97_ex_1.m)

## References

1. ![$mmd_print_reference]($/reference/leroy1998depthpressure.enw)
