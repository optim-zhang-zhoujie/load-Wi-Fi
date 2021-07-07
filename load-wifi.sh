#!/bin/bash
touch ~/setup_wifi.sh

cat <<EOT >> ~/setup_wifi.sh
#!/bin/bash
sudo modprobe rtl8192cu
echo "056E 4009" | sudo tee /sys/bus/usb/drivers/rtl8192cu/new_id
EOT

chmod 744 ~/setup_wifi.sh

sudo mv ~/setup_wifi.sh /usr/local/bin/setup_wifi.sh

touch ~/setup_wifi.service

cat <<EOT >> ~/setup_wifi.service
[Unit]
Description=Setup Wi-Fi driver
After=syslog.target network.target

[Service]
ExecStart=/usr/local/bin/setup_wifi.sh

[Install]
WantedBy=default.target
EOT

chmod 664 ~/setup_wifi.service

sudo mv ~/setup_wifi.service /etc/systemd/system/setup_wifi.service

sudo systemctl daemon-reload
sudo systemctl enable setup_wifi.service
