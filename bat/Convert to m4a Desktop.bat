chcp 65001
@ECHO OFF
 
:FILEDROP
:REPEAT
ffmpeg -i %1 -vn -ac 2 -ar 44100 -ab 128k -acodec aac -f mp4 "%USERPROFILE%\Desktop\%~n1.m4a"
if "%~2"=="" GOTO EXIT
shift
GOTO REPEAT
:EXIT
pause