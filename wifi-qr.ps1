$SSID = Read-Host -Prompt "Enter SSID (Wi-Fi network name)"

$Password = Read-Host -Prompt "Enter Wi-Fi Password" -AsSecureString
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password)
$PlainPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

$QRString = "WIFI:T:WPA;S:$SSID;P:$PlainPassword;H:;;"

qr.exe -s $QRString

Write-Host "QR code generated successfully."
