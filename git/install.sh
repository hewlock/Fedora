if [ "$DESKTOP_SESSION" != "gnome" ] || [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install git"

git config --global alias.co checkout
git config --global credential.helper gnome-keyring
