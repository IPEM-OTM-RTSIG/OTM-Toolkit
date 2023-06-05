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

:: Invoke the mangler to Create +/- 3% MU changes.  
mangle.exe -o "MU+3pc.dcm" "%originalPlan%" "mu=+3%%"
mangle.exe -o "MU-3pc.dcm" "%originalPlan%" "mu=-3%%"

:: Invoke the mangler to Create +/- 5% MU changes.  
mangle.exe -o "MU+5pc.dcm" "%originalPlan%" "mu=+5%%"
mangle.exe -o "MU-5pc.dcm" "%originalPlan%" "mu=-5%%"

:: Invoke the mangler to Create +/- 10% MU changes.  
mangle.exe -o "MU+10pc.dcm" "%originalPlan%" "mu=+10%%"
mangle.exe -o "MU-10pc.dcm" "%originalPlan%" "mu=-10%%"

:: Invoke the mangler to Create +/- 15% MU changes.  
mangle.exe -o "MU+15pc.dcm" "%originalPlan%" "mu=+15%%"
mangle.exe -o "MU-15pc.dcm" "%originalPlan%" "mu=-15%%"

:: Create +/- 3 degree Collimator changes.  
mangle.exe -o "Coll+3deg.dcm" "%originalPlan%" "c=+3"
mangle.exe -o "Coll-3deg.dcm" "%originalPlan%" "c=-3"

:: Create +/- 5 degree Collimator changes.  
mangle.exe -o "Coll+5deg.dcm" "%originalPlan%" "c=+5"
mangle.exe -o "Coll-5deg.dcm" "%originalPlan%" "c=-5"

:: Create +/- 10 degree Collimator changes.  
mangle.exe -o "Coll+10deg.dcm" "%originalPlan%" "c=+10"
mangle.exe -o "Coll-10deg.dcm" "%originalPlan%" "c=-10"

:: Create 3mm Leaf Shift on Both Banks.  
mangle.exe -o "Leaf+3mm.dcm" "%originalPlan%" "lb0 pr=+3" "lb1 pr=+3"

:: Create 5mm Leaf Shift on Both Banks.  
mangle.exe -o "Leaf+5mm.dcm" "%originalPlan%" "lb0 pr=+5" "lb1 pr=+5"

:: Create 10mm Leaf Shift on Both Banks.  
mangle.exe -o "Leaf+10mm.dcm" "%originalPlan%" "lb0 pr=+10" "lb1 pr=+10"

:: Create 3mm Shift on first jaw bank.  
mangle.exe -o "Jaw+3mm.dcm" "%originalPlan%" "j0 jb0 pr=+3" "j0 jb1 pr=+3"

:: Create 5mm Shift on first jaw bank.  
mangle.exe -o "Jaw+5mm.dcm" "%originalPlan%" "j0 jb0 pr=+5" "j0 jb1 pr=+5"

:: Create 10mm Shift on first jaw bank.  
mangle.exe -o "Jaw+10mm.dcm" "%originalPlan%" "j0 jb0 pr=+10" "j0 jb1 pr=+10"

ECHO. 
ECHO Toolkit creation complete.
PAUSE