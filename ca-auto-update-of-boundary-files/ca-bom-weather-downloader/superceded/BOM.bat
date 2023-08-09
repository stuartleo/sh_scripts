@echo off

for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%-%MyDate:~4,2%-%MyDate:~6,2%


set "_year=%MyDate:~0,4%"
set "_month=%MyDate:~4,2%"
set "_day=%MyDate:~6,2%"

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /command ^
    "open ftp://anonymous:anonymous@ftp.bom.gov.au/" ^
    "lcd C:\Users\Stuart\Documents\BOM\" ^
    "cd /anon/gen/fwo/" ^
    "get IDV60910.tgz IDV60910_(%_year%%_month%%_day%).tgz" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%


