if [ "$DESKTOP_SESSION" != "gnome" ]; then
	exit 0
fi

echo "[INFO] Installing Gnome"

sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
sudo rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
sudo rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

if [ "$OS_NAME" = "Fedora" ]; then
	sudo dnf -y install autoconf
	sudo dnf -y install automake
	sudo dnf -y install pkgconfig
	sudo dnf -y install gtk3-devel
fi

git clone https://github.com/horst3180/arc-theme --depth 1
cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
cd ..
rm -rf arc-theme

gsettings set org.gnome.desktop.interface gtk-theme "Arc"
