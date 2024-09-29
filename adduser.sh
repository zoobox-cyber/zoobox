# Clean up script when adding new user
#   This script will set up the new user's home directory
echo "Setting the user arcane..."

sudo cp -r /home/zoobox/.zoobox /home/newuser/.zoobox

# /home/newuser/.zoobox may be modified to suit new user's preferences before running the script

sudo cp -r /home/newuser/.zoobox/bio /home/newuser
sudo cp -r /home/newuser/.zoobox/chem /home/newuser
sudo cp -r /home/newuser/.zoobox/econ /home/newuser
sudo cp -r /home/newuser/.zoobox/info /home/newuser
sudo cp -r /home/newuser/.zoobox/phys /home/newuser
sudo cp -r /home/newuser/.zoobox/pol /home/newuser
sudo cp -r /home/newuser/.zoobox/psych /home/newuser
sudo cp -r /home/newuser/.zoobox/soc /home/newuser

sudo rmdir /home/newuser/Desktop 
sudo rmdir /home/newuser/Documents
sudo rmdir /home/newuser/Downloads
sudo rmdir /home/newuser/Music
sudo rmdir /home/newuser/Pictures
sudo rmdir /home/newuser/Public
sudo rmdir /home/newuser/Templates
sudo rmdir /home/newuser/Videos


sudo chown -R newuser:newuser /home/newuser/

# Final message
echo "User set up complete. Please follow the next steps in the README file to finish up."


