#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install tmux"
sudo dnf -y install tmux
sudo dnf -y install tmux-powerline

if [ -e ~/.tmux.conf ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.tmux.conf"
	rm ~/.tmux.conf
fi

echo -e "[\033[0;32mINFO\033[0m] link ~/.tmux.conf"
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf
