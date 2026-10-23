@echo off

setlocal EnableDelayedExpansion
set Car=Toyota
set Toyota=Prius

> con echo               Car = %Car%
> con echo         Car Again = !Car!
> con echo Delayed Expansion = !%Car%!

pause
endlocal
@echo on
