# Steps for setting up the system on a fresh debian install :
# 
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
#     Use lightdm-settings
#     sudo lightdm-settings
#       Select Crux as the theme, HighContrast for icons, and Nimbus Roman for font
#       Set lightdm as needed
#
#   Reboot to see all changes.
#     On reboot, select openbox as window manager before login in.
#
#
#
# Adding users 
#   The zoobox user serves as an administrator account with superuser priviledges.
#   (change "newuser" for the new user's username):
#   To add user accounts : 
#     sudo adduser newuser
#     set password for newuser
#     answer the prompts to your liking
#   To setup the home directory of newuser :
#     cp /home/zoobox/.zoobox/adduser.sh /home/zoobox/.zoobox/newuser.sh
#     nano /home/zoobox/.zoobox/newuser.sh
#     change every "newuser" in the file for the actual new user's username 
#     save and quit
#     run the newuser.sh script
#   New user session is ready.
#
#
#   To give superuser priviledges to a user account
#     run "sudo visudo" in the terminal with a root account
#     in the "User priviledge specification" section, add the following line :
#       username ALL=(ALL:ALL) ALL
#       change "username" for the username of the new superuser 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 

