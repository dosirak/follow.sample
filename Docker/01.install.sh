#!/bin/sh

. `dirname $0`/00.env.sh

sudo apt-get install docker.io
sudo usermod -a -G docker ${USERID}
sudo reboot
