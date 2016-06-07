echo "[INFO] Installing Fonts"
# Fonts from https://github.com/google/fonts
if [ -e ~/.fonts ]; then
	echo "[INFO] removing old ~/.fonts directory"
	rm ~/.fonts
fi
ln -s $(pwd)/fonts/.fonts ~/.fonts
