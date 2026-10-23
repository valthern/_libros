@echo off

set inAndOut=OUT
set outer=OUT
0
> con echo Outside first Scope:
> con echo Outer Variable = %outer%
> con echo Inner Variable = %inner%
> con echo In/Out Variable = %inAndOut%
> con echo.

setlocal

	set inAndOut=IN
	set inner=IN

	> con echo Inside Scope:
	> con echo Outer Variable = %outer%
	> con echo Inner Variable = %inner%
	> con echo In/Out Variable = %inAndOut%
	> con echo.

endlocal

> con echo Outside then Scope:
> con echo Outer Variable = %outer%
> con echo Inner Variable = %inner%
> con echo In/Out Variable = %inAndOut%
> con echo.

pause
@echo on
