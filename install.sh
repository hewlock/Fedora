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

export OS_NAME
export OS_KERNEL

for SCRIPT in $(find . -name "install.sh" -print | grep -v '\.\/install.sh'); do
	sh $SCRIPT
done
