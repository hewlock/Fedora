#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo "[INFO] install bash"

if [ -e ~/.bashrc ]; then
	echo "[INFO] removing ~/.bashrc"
	rm ~/.bashrc
fi

echo "[INFO] link ~/.bashrc"
ln -s $(pwd)/bash/.bashrc ~/.bashrc

echo "[INFO] install powerline"
sudo dnf -y install powerline
