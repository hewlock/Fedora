#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo "[INFO] installing vim"
sudo dnf -y install vim-enhanced

if [ -e ~/.vimrc ]; then
	echo "[INFO] removing old ~/.vimrc"
	rm ~/.vimrc
fi

ln -s $(pwd)/vim/.vimrc ~/.vimrc

if [ -e ~/.vim ]; then
	echo "[INFO] removing old ~/.vim"
	rm ~/.vim
fi

ln -s $(pwd)/vim/.vim ~/.vim
