if [ "$DESKTOP_SESSION" != "gnome" ] || [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo -e "[\033[0;32mINFO\033[0m] install gnome"

sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
sudo rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
sudo rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

sudo dnf -y install autoconf
sudo dnf -y install automake
sudo dnf -y install pkgconfig
sudo dnf -y install gtk3-devel

echo -e "[\033[0;32mINFO\033[0m] install arc theme"
git clone https://github.com/horst3180/arc-theme --depth 1
cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
cd ..
rm -rf arc-theme

echo -e "[\033[0;32mINFO\033[0m] interface settings"
gsettings set org.gnome.desktop.interface clock-format "12h"
gsettings set org.gnome.desktop.interface clock-show-date "true"
gsettings set org.gnome.desktop.interface document-font-name "Roboto Regular 11"
gsettings set org.gnome.desktop.interface font-name "Roboto Regular 11"
gsettings set org.gnome.desktop.interface gtk-theme "Arc"
gsettings set org.gnome.desktop.interface monospace-font-name "Roboto Mono for Powerline 11"

gsettings set org.gnome.desktop.wm.preferences titlebar-font "Roboto Bold 11"
