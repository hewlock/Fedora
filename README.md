# Environment

## Fedora

### Virtual Box

#### Install Guest Additions

1. `sudo dnf update`
2. `reboot`
3. `sudo dnf install gcc kernel-devel-$(uname -r)`
4. Insert Guest Additions CD and Run installer
	- Devices > Insert Guest Additions CD Image...
5. `reboot`

#### Gnome Scaling

1. `su`
2. `vi /usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml`
3. Change:
	- text-scaling-factor = 2.0
	- scaling-factor = 2.0
	- cursor-size = 12
4. `reboot`
