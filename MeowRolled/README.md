<img width="800" height="500" alt="image" src="https://github.com/user-attachments/assets/cca33814-fc23-44d7-8b03-b49f539f33e8"/>

## Overview
**Meowed** is a DuckyScript payload that increases system volume and then opens a YouTube Short in the default browser.

It uses PowerShell to simulate repeated volume-up key presses before launching a video link.

---

## Payload

```ducky
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
