@echo off

setlocal EnableDelayedExpansion

set foodNash=Hot Chicken
set foodNYC=Thin Crust Pizza
set foodChic=Deep Dish Pizza
set foodNO=Muffuletta Sandwich
set foodSTL=Frozen Custard

set NashFull=Nashville
set NYCFull=New York City
set ChicFull=Chicago
set NOFull=New Orleans
set STLFull=St Louis

set city=NO
> con echo The best !food%city%! can be found only in !%city%Full!
set city=NYC
> con echo The best !food%city%! can be found only in !%city%Full!
set city=STL
> con echo The best !food%city%! can be found only in !%city%Full!
set city=Chic
> con echo The best !food%city%! can be found only in !%city%Full!
set city=Nash
> con echo The best !food%city%! can be found only in !%city%Full!

endlocal
pause
@echo on 
