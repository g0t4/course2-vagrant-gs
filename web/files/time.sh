#!/bin/bash -x

date
sudo systemctl restart systemd-timesyncd.service
date
echo "time should sync within a few seconds, check date command"



# usage:
# config.vm.provision "shell", name: "time", path: "files/time.sh"
