#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install emacs"
sudo dnf -y install emacs

if [ -e ~/.emacs.d ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.emacs.d"
	rm ~/.emacs.d
fi

echo -e "[\033[0;32mINFO\033[0m] link ~/.emacs.d"
ln -s $(pwd)/emacs/.emacs.d ~/.emacs.d
