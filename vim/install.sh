#!/bin/bash
if [ "$OS_NAME" = "Fedora" ]; then
	echo "[INFO] installing vim"
	sudo dnf -y install vim-enhanced
fi

if [ -e ~/.vimrc ]; then
	echo "[INFO] removing old ~/.vimrc"
	rm ~/.vimrc
fi

ln -s $(pwd)/vim/.vimrc ~/.vimrc
