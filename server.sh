#!/bin/sh
echo "bootstrapping rhel9 server"
# Setting and configuring the VM

dnf update -y
dnf install -y vim-enhanced wget
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd
PASS=$(echo "rhel9" | openssl passwd -1 -stdin)
useradd -p  "$PASS" -s /bin/bash -d /home/student -m  student

file="/etc/sudoers.d/student"
 Check if the file exists
if [ -e "$file" ]; then
    echo "The file already exists."
else
    echo "student  ALL=(ALL:ALL) NOPASSWD: ALL"  >> /etc/sudoers.d/student
fi