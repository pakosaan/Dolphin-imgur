#!/bin/bash
install -m 644 imgur.desktop `kf5-config --path services | cut -f1 -d':'`
sudo install -m 644 imgur.png /usr/share/pixmaps/
sudo install -m 755 imgur /usr/bin/


