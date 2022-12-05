#!/bin/bash
rm "`kf5-config --path services | cut -f1 -d':'`imgur.desktop"
[ -e "$HOME/.imgur_history" ] && rm $HOME/.imgur_history
sudo rm /usr/share/pixmaps/imgur.png
sudo rm $HOME/.local/bin/imgur
