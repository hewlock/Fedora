# Environment

## Virtual Box

- Shared Org Folder
   - Name: Org
   - Path: ~/Dropbox/Org
   - Access: Full
   - Auto Mount: true
   - Make Permanent: true

## OS

### Fedora

1. `sudo dnf update`
2. `reboot`
3. `sudo dnf install gcc kernel-devel-$(uname -r)`
4. Insert Guest Additions CD and Run installer
	- Devices > Insert Guest Additions CD Image...
	- sudo sh /run/media/mmoulton/VBOXADDITIONS_5.0.22_108108/VBoxLinuxAdditions.run
5. `reboot`

## Environment

In ~

1. `git clone https://github.com/hewlock/environment.git Environment`
2. `cd Environment`
3. `sh install.sh`
4. `reboot`

## Optional

### Gnome Retina Display

#### Virtual Box

1. Display
   - check "Use Unscaled HiDPI Output"

#### Virtual Machine

1. `su`
2. `vim /usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml`
3. Change:
	- `gsettings set org.gnome.desktop.interface text-scaling-factor 2`
	- `gsettings set org.gnome.desktop.interface scaling-factor 2`
	- `gsettings set org.gnome.desktop.interface cursor-size 12`
