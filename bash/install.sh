#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo "[INFO] Installing Bash"

if [ -e ~/.bashrc ]; then
	echo "[INFO] removing old ~/.bashrc"
	rm ~/.bashrc
fi

ln -s $(pwd)/bash/.bashrc ~/.bashrc
