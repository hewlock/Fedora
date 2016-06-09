if [ "$DESKTOP_SESSION" != "gnome" ] || [ "$OS_NAME" != "Fedora" ]; then
	exit 0
fi

echo "[INFO] Installing Gnome Terminal"

SCHEMA=org.gnome.Terminal.Legacy.Settings
gsettings set $SCHEMA dark-theme "false"
gsettings set $SCHEMA default-show-menubar "false"

PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default)
PROFILE=${PROFILE:1:-1}
SCHEMA=org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE/
gsettings set "$SCHEMA" use-theme-colors "false"
gsettings set "$SCHEMA" scrollbar-policy "never"
gsettings set "$SCHEMA" foreground-color "#838394949696"
gsettings set "$SCHEMA" background-color "#00002B2B3636"
gsettings set "$SCHEMA" palette "[\"#070736364242\",\"#D3D301010202\",\"#858599990000\",\"#B5B589890000\",\"#26268B8BD2D2\",\"#D3D336368282\",\"#2A2AA1A19898\",\"#EEEEE8E8D5D5\",\"#00002B2B3636\",\"#CBCB4B4B1616\",\"#58586E6E7575\",\"#65657B7B8383\",\"#838394949696\",\"#6C6C7171C4C4\",\"#9393A1A1A1A1\",\"#FDFDF6F6E3E3\"]"
