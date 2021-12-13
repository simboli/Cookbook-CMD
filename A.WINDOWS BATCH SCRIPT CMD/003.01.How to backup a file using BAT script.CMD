@echo off
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set Min=%dt:~10,2%
set Sec=%dt:~12,2%

set stamp=%YYYY%%MM%%DD%

del "C:\script\Backup\Log_backup.txt"
echo Copying started at %date% %time%>>C:\script\Backup\Log_backup.txt
copy "C:\ImportantFolder\ImportantFile.xls" "C:\ImportantFolder\ImportantFile - %stamp%.xls"
echo Copying finished at %date% %time%>>C:\script\Backup\Log_backup.txt
echo File copied successfully at %date% %time%>>C:\script\Backup\Log_backup.txt
echo ------------------------------------ >>C:\script\Backup\Log_backup.txt
