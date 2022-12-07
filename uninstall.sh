#!/bin/bash
rm "`kf5-config --path services | cut -f1 -d':'`imgur.desktop"
sudo rm /usr/share/pixmaps/imgur.png
sudo rm /usr/bin/imgur
