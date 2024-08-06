read -p "Enter SSID (Wi-Fi network name): " SSID
read -s -p "Enter Wi-Fi Password: " Password
echo

QRString="WIFI:T:WPA;S:${SSID};P:${Password};H:;;"

qrencode -m 2 -t utf8 "$QRString"

echo "QR code generated successfully."