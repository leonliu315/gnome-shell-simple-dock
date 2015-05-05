#!/bin/bash
# Redirect 'sdtout' and 'stderr'
exec 1>> /tmp/simple-dock-install
exec 1>> /tmp/outfile 2>&1
# Install extension
gnome-shell-extension-tool -d simple-dock@nothing.org
mkdir -p ~/.local/share/gnome-shell/extensions/simple-dock@nothing.org
rm -r ~/.local/share/gnome-shell/extensions/simple-dock@nothing.org/*
cp -rf simple-dock@nothing.org/* ~/.local/share/gnome-shell/extensions/simple-dock@nothing.org
# Activate extension
gnome-shell-extension-tool -e simple-dock@nothing.org
echo Gnome Shell will be restarted, ...
gnome-shell --replace &

