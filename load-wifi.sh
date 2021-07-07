#!/bin/bash
touch ~/setup_wifi

cat <<EOT >> ~/setup_wifi
#!/bin/bash
sudo modprobe rtl8192cu
echo "056E 4009" | sudo tee /sys/bus/usb/drivers/rtl8192cu/new_id
EOT

chmod 755 ~/setup_wifi

sudo mv ~/setup_wifi /etc/init.d/setup_wifi
sudo update-rc.d setup_wifi defaults 90
