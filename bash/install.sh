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

echo -e "[\033[0;32mINFO\033[0m] install rpm repositories as root"
su -c "curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -"

if [ -e ~/.config/powerline ]; then
	echo -e "[\033[0;32mINFO\033[0m] remove ~/.config/powerline"
	rm ~/.config/powerline
fi
echo -e "[\033[0;32mINFO\033[0m] link ~/.config/powerline"
ln -s $(pwd)/bash/powerline ~/.config/powerline

for PACKAGE in ack acpi fortune-mod powerline nodejs; do
	echo ""
	echo -e "[\033[0;32mINFO\033[0m] install ${PACKAGE}"
	sudo dnf -y install ${PACKAGE}
done
