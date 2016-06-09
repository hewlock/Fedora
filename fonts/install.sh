#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo "[INFO] Installing Fonts"

if [ -e ~/.fonts ]; then
	echo "[INFO] removing old ~/.fonts"
	rm ~/.fonts
fi

# Fonts from https://github.com/google/fonts
ln -s $(pwd)/fonts/.fonts ~/.fonts
