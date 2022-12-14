# Depth to pressure conversion. Leroy '97 equation

## Mathematical definition

![$mmd_print_equation_boxed](include/depth_to_pressure_sea_leroy_97.tex)

This is an equation for the "standard" ocean. Use corrective terms from the table above for particular applications.

![$mmd_print_markdown](include/depth_to_pressure_sea_leroy_97_args.en.md)

![$mmd_print_equation](include/depth_to_pressure_sea_leroy_97_1.tex)
![$mmd_print_equation](include/depth_to_pressure_sea_leroy_97_2.tex)
![$mmd_print_equation](include/depth_to_pressure_sea_leroy_97_3.tex)

![$mmd_print_markdown](include/depth_to_pressure_sea_leroy_97_vars.en.md)

## Corrective terms for various areas

![$mmd_print_equation](include/depth_to_pressure_sea_leroy_97_corr.tex)

![$mmd_print_markdown](include/depth_to_pressure_sea_leroy_97_coef.en.md)

## Octave/Matlab implementation

![$mmd_print_code]($/sonar_m/toolbox/depth_pressure/depth_to_pressure_sea_leroy_97.m)

## Computational examples

![$mmd_eval_code]($/sonar_m/example/depth_pressure/depth_to_pressure_sea_leroy_97_ex_1.m)

## References

1. ![$mmd_print_reference]($/reference/leroy1998depthpressure.enw)
