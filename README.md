# SonarDocsBuilder
This repository contains **content templates** and scripts to generate documentation for ![Sonar.m]([https://github.com/gorbatschow/Sonar.m) toolbox. It is based on ![MkDocs](https://www.mkdocs.org/) static site generator.
You can see the result here https://gorbatschow.github.io/SonarDocs/  .

## Content template
Each page of documentation consist of mathematical expressions, program code, figures, list of references and etc.
All of these can be stored in different files, so we need to put some links to such files in the template.
Furthermore files may generated by scripts during template processing.

Lets see an example of template ![sound_absorption_sea_thorp.en.md](content/sound_absorption_sea_thorp/sound_absorption_sea_thorp.en.md) .
```
# Sound absorption in sea. Thorp equation

## Mathematical definition

![$mmd_print_equation_boxed](include/sound_absorption_sea_thorp.tex)

![$mmd_print_markdown](include/sound_absorption_sea_thorp_args.en.md)

## Octave/Matlab implementation

![$mmd_print_code]($/sonar_m/toolbox/sound_absorption/sound_absorption_sea_thorp.m)

## Computational examples

![$mmd_eval_code]($/sonar_m/example/sound_absorption/sound_absorption_sea_thorp_ex_1.m)

## References

1. ![$mmd_print_reference]($/reference/thorp1967analytic.enw)
1. ![$mmd_print_reference]($/reference/etter2018underwater.enw)

```

As you can see this is a markdown code. But you may also notice special tags which is
- `$mmd_print_equation_boxed( ... )`
- `$mmd_print_markdown( ...)`
- `$mmd_print_code( ... )`
- `$mmd_eval_code( ... )`

These tags are processed by scripts written in Octave/Matlab language. You can find the source code in ![util](https://github.com/gorbatschow/SonarDocsBuilder/tree/master/util) directory. The preprocessor itself is [build_from_template.m](https://github.com/gorbatschow/SonarDocsBuilder/blob/master/util/build_from_template.m) . So for example the `$mmd_print_equation_boxed( filename )` tag is replaced by equation stored in **filename** file in **TeX** format, and the  `$mmd_eval_code( filename )` leads to the execution of **filename** script and the tag is replaced by the result of this script, which can be an image or a table or something else.

## How to build and run documentation
1. Clone this repository
`git clone --recurse-submodules git@github.com:gorbatschow/SonarDocsBuilder.git`
1. Go to **util** directory
`cd util`
1. Run build script using **Octave**
`octave update_mkdocs.m`
1. Go to **mkodcs** directory
`cd ../mkdocs`
1. Run **MkDocs** as usual
`mkdocs serve`

If you don't have **MkDocs** installed look the next section. 

## Preparing MkDocs using Anaconda
1. You already have an ![Anaconda](https://www.anaconda.com/).
1. Create environment
`conda create --name sonardocs`
1. Activate environment 
`conda activate sonardocs`
1. Install **Python**
`conda install python`
1. Install **MkDocs**
`conda install -c conda-forge mkdocs`
1. Install **mkdocs-literate-nav** plugin for **MkDocs**
`conda install -c conda-forge mkdocs-literate-nav`




