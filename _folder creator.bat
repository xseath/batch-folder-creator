@echo off
@break off
@title Simple folder Creator - by xseath
@color 0a
@cls

set /p prefix=Enter Prefix (or leave empty): 

set /p start=Enter Start:
if %start% == [] Quit

set /p end=Enter End  :
if %end% == [] Quit

setlocal EnableDelayedExpansion


FOR /L %%A IN (%start%,1,%end%) DO (
  ECHO %prefix%%%A


if not exist "%prefix%%%A" (
  
  if %%A LSS 10 (
     mkdir "%prefix%0%%A"
  ) else (
     mkdir "%prefix%%%A"
  )

  if "!errorlevel!" EQU "0" (
    echo Folder created successfully
  ) else (
    echo Error while creating folder
  )
) else (
  echo Folder already exists
)


)
endlocal
pause
exit