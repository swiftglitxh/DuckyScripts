REM ==================================================
REM  PAYLOAD: Meowed
REM  CATEGORY: 
REM  AUTHOR: SwiftGlitxh
REM  VERSION: 1.0
REM  
REM  DESCRIPTION
REM  Raises the system volume to maximum using PowerShell
REM  keystroke injection, then opens a YouTube Short.
REM ==================================================
DELAY 600
GUI r
DELAY 300
STRING powershell -WindowStyle Hidden -c "$i=0;while($i -lt 100){(New-Object -ComObject WScript.Shell).SendKeys([char]175);$i++}"
ENTER
DELAY 600
GUI r
DELAY 300
STRING https://www.youtube.com/shorts/54wIQBtvtMI
DELAY 300
ENTER
