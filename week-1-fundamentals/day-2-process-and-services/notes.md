## week 1, day 2: Process & Services

### commands practiced
- `ps aux`, `top`, `systemctl`
- `ps aux | grep chrome` it show the process related to chrome
- ` top ` in that task: section show how many process running
- `systemctl list-units --type=sevice` list active services
- `systemctl status firewalld` check service status
- `sudo systemctl stop cups` temporarily stop services
- `sudo systemctl disabled cups` permanently disable the boot
- `systemctl lists-unit-files --type=service` list all active and inactive services
- `systemctl list-units --type=service --state=running | wc -l ` count of active services


### Key Learning
- `systemctl` Control services
- `top` real time system taskbar with cup usage using 1
- `avahi-daemon` it enables mDNS and its security vulnerability


