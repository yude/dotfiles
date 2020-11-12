chcp 65001
@ECHO OFF
 
:FILEDROP
:REPEAT
ffmpeg -i %1 -n -vcodec hevc_nvenc -vf yadif=1:-1:0 "C:\Users\yude\Desktop\%~n1.mp4"
if "%~2"=="" GOTO EXIT
shift
GOTO REPEAT
:EXIT
pause