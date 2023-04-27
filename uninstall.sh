#!/bin/bash
rm "`kf5-config --path services | cut -f1 -d':'`imgur.desktop"
rm $HOME/.local/share/icons/hicolor/256x256/apps/imgur.png
rm $HOME/.local/bin/imgur
