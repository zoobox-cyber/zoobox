#!/bin/bash

# Update and upgrade system packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install core dependencies
echo "Installing core dependencies..."
sudo apt install -y git curl terminator openbox htop qt5ct lxappearance lightdm xdotool

# Install utilities
echo "Installing core dependencies..."
sudo apt install -y yt-dlp audacity kdenlive vlc

# Clone your repository (if not already done)
REPO_URL="https://github.com/zoobox-cyber/zoobox.git"
REPO_DIR="zoobox"

if [ ! -d "$REPO_DIR" ]; then
  echo "Cloning repository..."
  git clone $REPO_URL
else
  echo "Repository already cloned. Pulling latest changes..."
  cd $REPO_DIR
  git pull origin main
  cd ..
fi

# Copy configuration files
echo "Setting up Openbox configurations..."
cp -r $REPO_DIR/home/.config/* ~/.config/
  # Openbox theme
cp -r $REPO_DIR/home/.themes/* ~/.themes/
  # GTK theme
sudo cp -r $REPO_DIR/usr/share/themes/Crux /usr/share/themes/
  # Background
sudo cp -r $REPO_DIR/boot/grub/black.jpg /boot/grub/

# Final message
echo "Setup completed. Please reboot to apply all changes."


