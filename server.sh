#!/bin/sh

echo "bootstrapping ubuntu server"

# Setting and configuring the VM

apt update -y && apt upgrade -y && apt autoclean 
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd
PASS=$(echo "ubuntu" | openssl passwd -1 -stdin)
useradd -p  "$PASS" -s /bin/bash -d /home/student -m  student
echo "student  ALL=(ALL:ALL) NOPASSWD: ALL"  >> /etc/sudoers.d/student
