#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt update -y

# Install core dependencies
echo "Installing core dependencies..."
sudo apt install -y git vim pcmanfm terminator openbox lxappearance xdotool ncal acpi neofetch

# Install utilities
# echo "Installing utilities..."
# sudo apt install -y audacity kdenlive vlc curl htop at

# Copy configuration files
echo "Setting up base configuration..."
cp -r zoobox/home/zoobox/.config/* ~/.config/
  # Openbox theme
git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes
cp zoobox/home/zoobox/.themes/Penumbra/openbox-3/themerc ~/.themes/Penumbra/openbox-3/themerc
  # GTK theme
sudo cp -r zoobox/usr/share/themes/Crux /usr/share/themes/
sudo cp zoobox/home/.gtkrc-2.0 /home/

# Session setup
echo "Setting up session settings..."
sudo cp zoobox/boot/grub/black.jpg /boot/grub/
sudo update-grub
sudo apt install -y lightdm
sudo apt install -y lightdm-settings
sudo cp -r zoobox/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf
sudo cp zoobox/usr/share/images/desktop-base/black.jpg /usr/share/images/desktop-base/black.jpg
sudo cp zoobox/usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_debian.conf /usr/share/lightdm/lightdm-gtk-greeter.conf.d/01_debian.conf

# Configure LightDM to use Openbox by default
echo "Configuring LightDM to use Openbox by default..."
sudo bash -c 'echo "[Seat:*]
user-session=openbox" > /etc/lightdm/lightdm.conf.d/openbox.conf'

# User session set up
echo "Setting the user arcane..."
sudo cp -r zoobox/home/zoobox/bio ~/
sudo cp -r zoobox/home/zoobox/chem ~/
sudo cp -r zoobox/home/zoobox/econ ~/
sudo cp -r zoobox/home/zoobox/info ~/
sudo cp -r zoobox/home/zoobox/phys ~/
sudo cp -r zoobox/home/zoobox/pol ~/
sudo cp -r zoobox/home/zoobox/psych ~/
sudo cp -r zoobox/home/zoobox/soc ~/

sudo mv zoobox .zoobox

sudo rmdir Desktop
sudo rmdir Documents
sudo rmdir Downloads
sudo rmdir Music
sudo rmdir Pictures
sudo rmdir Public
sudo rmdir Templates
sudo rmdir Videos

# Final message
echo "Installation completed. Please follow the next steps in the README file to finish the set up."


