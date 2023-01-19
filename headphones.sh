# instalar o bluez-tools
sudo apt install bluez-tools

#Get the mac address
bt-device -l

# MAC of the small philips headphones
bluetoothctl connect 20:22:05:25:0A:76

alias fone='until bluetoothctl connect 20:22:05:25:0A:76; do  echo ...  ; sleep 1; done'
