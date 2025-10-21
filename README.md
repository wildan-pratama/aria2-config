# ARIA2 Config

## ARIA2

Aria2 is a lightweight and powerful command-line download utility that supports HTTP(S), FTP, BitTorrent, and Metalink.
This guide provides quick installation steps for various Linux distributions.

## How To Install Aria2
- Arch Linux / Manjaro / EndeavourOS (pacman)
```
sudo pacman -S aria2
```
- Debian / Ubuntu / Linux Mint	(apt)
```
sudo apt update && sudo apt install aria2
```
- Fedora / RHEL / Rocky / AlmaLinux	(dnf)
```
sudo dnf install aria2
```
- openSUSE	(zypper)
```
sudo zypper install aria2
```
- Void Linux	(xbps)
```
sudo xbps-install -S aria2
```
- Alpine Linux	(apk)
```
sudo apk add aria2
```
- Gentoo	(emerge)
```
sudo emerge -av net-misc/aria2
```

## To Install Config


```
git clone https://github.com/wildan-pratama/aria2-config.git
cd aria2-config
./install.sh
```

## To Run Aria2

You can just run or add it to autostart
```
aria2c --conf-path=~/.config/aria2/aria2.conf
```
if You are using Systemd you can add it to autostart
```
sudo systemctl enable aria2.service
sudo systemctl start aria2.service
```

## Browser Extensions

[Chrome](https://chromewebstore.google.com/detail/aria2-explorer/mpkodccbngfoacfalldjimigbofkhgjn?hl=en)
[Firefox](https://addons.mozilla.org/en-US/firefox/addon/aria2-integration/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)

You can Import extension setting inside this repo
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/955fb56e-b529-4044-bde1-eb875c28d292" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/d4e60ca0-86cb-4fc4-a0f5-2285a75acac6" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/3f955d07-014b-4f5f-ae12-8f3cd92ab3e6" />



