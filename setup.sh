#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt update -y

# Install core dependencies
echo "Installing core dependencies..."
sudo apt install -y git vim pcmanfm terminator openbox lxappearance xdotool

# Install utilities
# echo "Installing utilities..."
# sudo apt install -y audacity kdenlive vlc curl htop 

# Copy configuration files
echo "Setting up base configuration..."
cp -r zoobox/home/.config/* ~/.config/
  # Openbox theme
git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes
cp -r zoobox/home/.themes/Penumbra ~/.themes/
  # GTK theme
sudo cp -r zoobox/usr/share/themes/Crux /usr/share/themes/

# Session setup
echo "Setting up session settings..."
sudo cp zoobox/boot/grub/black.jpg /boot/grub/
sudo update-grub
sudo apt install lightdm
sudo apt install lightdm-gtk-greeter-settings
sudo cp -r zoobox/etc/lightdm /etc/lightdm
sudo cp zoobox/usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_debian.conf /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_debian.conf
	

# Final message
echo "Installation completed. Please follow the next steps in the README file to finish the set up."


