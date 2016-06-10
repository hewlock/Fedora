#!/bin/bash
if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install fonts"

if [ -e ~/.fonts ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.fonts"
	rm ~/.fonts
fi

# Fonts from:
# https://github.com/google/fonts
# https://github.com/powerline/fonts
echo -e "[\033[0;32mINFO\033[0m] link ~/.fonts"
ln -s $(pwd)/fonts/.fonts ~/.fonts
