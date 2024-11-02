@echo off
:main
call :fiboFunction %1 
exit /b 0
:fiboFunction 
setlocal enableDelayedExpansion 
set /a n=%1
set /a f1=0
set /a f2=1
for /l %%i in (1,1,%n%) do (
set /a mem=!f2!
set /a f2=!f1!+!f2!
set /a f1=!mem! 
)
echo fibo(%1)=%f1%
endlocal
exit /b 0
