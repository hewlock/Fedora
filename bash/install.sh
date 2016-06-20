#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install bash"

if [ -e ~/.bashrc ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.bashrc"
	rm ~/.bashrc
fi

echo -e "[\033[0;32mINFO\033[0m] link ~/.bashrc"
ln -s $(pwd)/bash/.bashrc ~/.bashrc

echo -e "[\033[0;32mINFO\033[0m] install powerline"
sudo dnf -y install powerline
if [ -e ~/.config/powerline ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.config/powerline"
	rm ~/.config/powerline
fi
echo -e "[\033[0;32mINFO\033[0m] link ~/.config/powerline"
ln -s $(pwd)/bash/powerline ~/.config/powerline

echo -e "[\033[0;32mINFO\033[0m] install ag"
sudo dnf -y install the_silver_searcher
