if [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install virtualbox"

sudo usermod -a -G vboxsf $USERNAME
sudo ln -s /media/sf_Org/ ~/Org
