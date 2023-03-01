@echo off
:: This Batch File Drives rtp-mangle in order to create a set of RTPLAN file modifications for the OTMSIG Commissioning Toolkit. 

TITLE OTMSIG Commissioning Toolkit
ECHO.
ECHO ============================
ECHO OTMSIG Commissioning Toolkit
ECHO ============================
ECHO. 


:: Get the original RTPLAN File name as a variable. 
ECHO Place the original RTPLAN file into this script's folder and enter the file name at the prompt. 
ECHO.
set /p originalPlan="Filename: "
ECHO.

:: Invoke the mangler to Create +/- 10% MU changes.  
mangle.exe -o "MU+10pc.dcm" "%originalPlan%" "mu=+10%%"
mangle.exe -o "MU-10pc.dcm" "%originalPlan%" "mu=-10%%"

:: Create +/- 10 degree Collimator changes.  
mangle.exe -o "Coll+10deg.dcm" "%originalPlan%" "c=+10"
mangle.exe -o "Coll-10deg.dcm" "%originalPlan%" "c=-10"

:: Create 5mm Leaf Shift on Both Banks.  
mangle.exe -o "Leaf+5mm.dcm" "%originalPlan%" "lb0 pr=+5" "lb1 pr=+5"

ECHO. 
ECHO Toolkit creation complete.
PAUSE