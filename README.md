# load-Wi-Fi
Load Wi-Fi config when start

## install

```sh
chmod +x load-wifi.sh
./load-wifi.sh
```

## enable

After installing, it is enabled automatically.

```sh
sudo systemctl enable setup_wifi.service
```

## disable

```sh
sudo systemctl disable setup_wifi.service
```

## reference

- https://izumisy.work/entry/2020/08/02/194006
- https://linuxconfig.org/how-to-run-script-on-startup-on-ubuntu-20-04-focal-fossa-server-desktop#:~:text=The%20Ubuntu%2020.04%20is%20based,service%20during%20the%20system%20boot.
