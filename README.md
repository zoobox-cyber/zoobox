# Steps for setting up the system on a fresh debian install
#   For now, zoobox only has one locally supported theme 
#   configuration. This configuration is dark mode optimized
#   based on GNOME native to debian. Hence, the dark mode 
#   should be activated as soon as possible before proceeding
#      On first opening of a user session. Click on the power
#      symbol in the top right corner of
#      the screen.
#      Toggle the dark mode
#      Once this is is done we can proceed.
#      This will prevent issues downstream.
#   
#   Getting the files for the installation of zoobox
#     sudo apt update
#     sudo apt install git -y
#     git clone https://github.com/zoobox-cyber/zoobox.git
# 
#   Executing the installation script
#     sudo chmod +x zoobox/setup.sh
#     zoobox/setup.sh
# 
#   User input necessary
#     At the end of the installation process, installing
#     lightdm triggers an event requiring user input.
#     On the first popup window, select 'OK' by pressing ENTER.
#     On the second popup window, select lightdm.
#     The installation should proceed automatically until
#     completely finished.
# 
#   Setting Crux as the GTK theme
#     In a terminal run the following
#       lxappearance   
#     A window will open. 
#     Select Crux in the left side bar
#     Select HighContrast in the Icons tab
#     Apply changes.
#     Close the app.
#
#   Setting lightdm
#     Use lightdm-gtk-greeter-settings
#       Select Crux as the theme and HighContrast for Icons
#       Set lightdm as needed
#
# Reboot to see all changes.
# 
# 
# 
# 
 


