@echo off
echo     _   __                __  __            
echo    / ^| / /___  ____ ___  / ^| / /___   ____ ___ 
echo   /  ^|/ / __ \/ __ `__ \/  ^|/ / __ \ / __ `__ \
echo  / /^|  / /_/ / / / / / / /^ / /\ \/ // / / / / /
echo /_/ ^|_/\____/_/ /_/ /_/_/ ^/_/  \__//_/ /_/ /_/  
echo ==================================================
echo [+] Gathering Information ...
xcopy %USERPROFILE%\AppData\Roaming\Microsoft %USERPROFILE%\Desktop\CopyData\ /E
xcopy %USERPROFILE%\Pictures\ %USERPROFILE%\Desktop\CopyData\ /E
pause