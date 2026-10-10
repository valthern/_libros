@echo off

set ;=semicolon
set @=at
set #=hashtag

> con echo %;% %@% %#%
echo(

set var$with.odd[chars}=This actually works
> con echo %var$with.odd[chars}%
echo(

set X = Hello
> con echo The value of X-space is "%X %".
pause

