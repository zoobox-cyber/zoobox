#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt update -y

# Install core dependencies
echo "Installing core dependencies..."
sudo apt install -y git terminator openbox qt5ct lxappearance lightdm xdotool

# Install utilities
# echo "Installing utilities..."
# sudo apt install -y yt-dlp audacity kdenlive vlc curl htop 

# Copy configuration files
echo "Setting up base configuration..."
cp -r $REPO_DIR/home/.config/* ~/.config/
  # Openbox theme
cp -r $REPO_DIR/home/.themes/Penumbra ~/.themes/
  # GTK theme
sudo cp -r $REPO_DIR/usr/share/themes/Crux /usr/share/themes/
  # Session setup
sudo cp $REPO_DIR/boot/grub/black.jpg /boot/grub/
sudo cp $REPO_DIR/usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_debian.conf /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_debian.conf
	

# Final message
echo "Installation completed. Please follow the next steps in the README file to finish set up."


