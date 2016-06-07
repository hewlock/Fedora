#!/bin/bash
if [ "$OS_NAME" = "Fedora" ]; then
	echo "[INFO] installing vim"
	sudo dnf -y install vim-enhanced
fi

ln -s $(pwd)/vim/.vimrc ~/.vimrc
