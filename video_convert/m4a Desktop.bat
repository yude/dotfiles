chcp 65001
@ECHO OFF
 
:FILEDROP
:REPEAT
ffmpeg -i %1 -vn -ac 2 -ar 48000 -ab 128k -acodec aac -strict experimental -f mp4 "C:\Users\yude\Desktop\%~n1.m4a"
if "%~2"=="" GOTO EXIT
shift
GOTO REPEAT
:EXIT
pause