# emuR
====

maintenance for the emu R package from sourceforge.

This repo is converted from the emu-splus folder in the emu cvs repository on 
sourceforge. 

emu.cvs.sourceforge.net:/cvsroot/emu

The emuR package isn't maintained, and an alternative is apparently being prepared. We need to keep it working
on new versions of R, and this is the repo that will contain the necessary updates.

## Installation

The base emu package for windows includes tcl stuff that is called
from R. It seems that this is all based around the 32 bit ActiveState
tcl, which conflicts with the versions distributed with R. There may
be a better way, but this works.

Start R (32 bit) with

``` bash
MY_TCLTK=c:/Programs/Emu2.3/bin
```

Install emuR:

```r
devtools::install_github("richardbeare/emuR/emu", refs="rchecks")
```
test whether R emu is happy

```r
libray(emu)
emulink()
```
