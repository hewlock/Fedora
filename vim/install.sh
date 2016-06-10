#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install vim"
sudo dnf -y install vim-enhanced

if [ -e ~/.vimrc ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.vimrc"
	rm ~/.vimrc
fi

echo -e "[\033[0;32mINFO\033[0m] link ~/.vimrc"
ln -s $(pwd)/vim/.vimrc ~/.vimrc

if [ -e ~/.vim ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.vim"
	rm ~/.vim
fi

echo -e "[\033[0;32mINFO\033[0m] link ~/.vim"
ln -s $(pwd)/vim/.vim ~/.vim
