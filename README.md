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

## Install

In ~

1. `git clone https://github.com/hewlock/environment.git Environment`
2. `cd Environment`
3. `sh install.sh`
4. `reboot`

## Optional

### Gnome Retina Display

1. Virtual Box
   - Display > check "Use Unscaled HiDPI Output"
2. VM
   - `sh optional/retina.sh`
