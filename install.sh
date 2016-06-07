#!/bin/bash
OS_KERNEL=$(uname -s)
if [ "$OS_KERNEL" = "Darwin" ]; then
	OS_NAME="MacOS"
elif [ -f /etc/fedora-release ]; then
	OS_NAME="Fedora"
else
	OS_NAME="Unknown"
fi

echo "[INFO] $OS_NAME $OS_KERNEL"
