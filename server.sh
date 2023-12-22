#!/bin/sh
<<<<<<< HEAD
echo "bootstrapping rhel9 server"
=======

echo "bootstrapping ubuntu server"

>>>>>>> 1c1c3c938e8fe2c5987629c35e060c34121e4000
# Setting and configuring the VM

apt update -y && apt upgrade -y && apt autoclean 
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd
PASS=$(echo "ubuntu" | openssl passwd -1 -stdin)
useradd -p  "$PASS" -s /bin/bash -d /home/student -m  student
<<<<<<< HEAD

file="/etc/sudoers.d/student"
 Check if the file exists
if [ -e "$file" ]; then
    echo "The file already exists."
else
    echo "student  ALL=(ALL:ALL) NOPASSWD: ALL"  >> /etc/sudoers.d/student
fi
=======
echo "student  ALL=(ALL:ALL) NOPASSWD: ALL"  >> /etc/sudoers.d/student
>>>>>>> 1c1c3c938e8fe2c5987629c35e060c34121e4000
