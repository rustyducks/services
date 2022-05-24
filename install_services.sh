#!/bin/bash

# install udev rules
sudo cp 49-rustyducks.rules /etc/udev/rules.d/49-rustyducks.rules
sudo udevadm control --reload-rules
sudo udevadm trigger

# install services
sudo ln -s /home/pi/services/duckbase.service /etc/systemd/system/duckbase.service
sudo ln -s /home/pi/services/duckio.service /etc/systemd/system/duckio.service
sudo ln -s /home/pi/services/lidar.service /etc/systemd/system/lidar.service
sudo ln -s /home/pi/services/coincrolonome.service /etc/systemd/system/coincrolonome.service
sudo systemctl enable duckbase.service
sudo systemctl enable duckio.service
sudo systemctl enable lidar.service
sudo systemctl enable coincrolonome.service
