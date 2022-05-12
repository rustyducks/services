#!/bin/bash

# install udev rules
sudo cp 49-rustyducks.rules /etc/udev/rules.d/49-rustyducks.rules
sudo udevadm control --reload-rules
sudo udevadm trigger

# install services
sudo ln -s /home/pi/services/duckbase.service /etc/systemd/system/duckbase.service
sudo ln -s /home/pi/services/duckio.service /etc/systemd/system/duckio.service
sudo systemctl enable duckbase.service
sudo systemctl enable duckio.service

